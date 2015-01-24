class ResourcesController < ApplicationController
  include ApplicationHelper

  def show
    cypher = "START me=node(157)
              OPTIONAL MATCH me -[r]- related
              RETURN me, r, related"

    connections = neo.execute_query(cypher)["data"]

    me = connections[0][0]["data"]

    relationships = []
    if connections[0][1]
      connections.group_by{|group| group[1]["type"]}.each do |key,values|
        relationships <<  {id: key,
                     name: key,
                     values: values.collect{|n| n[2]["data"].merge({id: node_id(n[2]) }) } }
      end
    end

    relationships = [{"name" => "No Relationships","values" => [{"id" => "#{params[:id]}","name" => "No Relationships "}]}] if relationships.empty?

    @node = {details_html: "<h2>#{me["name"]}</h2>\n<p class='summary'>\n#{get_properties(me)}</p>\n",
              data: {
                attributes: relationships, name: me["username"], id: params[:id]
              }
            }

    render json: @node
  end
end
