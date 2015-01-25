module ApplicationHelper
  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def hashify(results)
    results["data"].map {|row| Hash[*results["columns"].zip(row).flatten] }
  end

  def node
    cypher = "START me=node(#{params[:id]})
              OPTIONAL MATCH me -[r]- related
              RETURN me, r, related"

    connections = neo.execute_query(cypher)["data"]

    me = connections[0][0]["data"]

    relationships = []
    if connections[0][1]
      connections.group_by{|group| group[1]["type"]}.each do |key,values|
        relationships <<  { id: key, name: key, values: values.collect{|n| n[2]["data"].merge({id: node_id(n[2]) }) } }
      end
    end

    relationships = [{"name" => "No Relationships","values" => [{"id" => "#{params[:id]}","name" => "No Relationships "}]}] if relationships.empty?

    {
      details_html: "<h2>#{me["username"]}</h2>\n<p class='summary'>\n#{get_properties(me)}</p>\n",
      data: {
        attributes: relationships, name: me["username"], id: params[:id]
      }
    }
  end

  def node_id(node)
    case node
      when Hash
        node["self"].split('/').last
      when String
        node.split('/').last
      else
        node
    end
  end

  def get_properties(node)
    properties = "<div class='aside-box'>"
    node.each_pair do |key, value|
      case key
      when 'title'
        properties << "<h3><b>#{key}:</b> #{value}</h3>"
      when 'avatar_url'
        properties << "<p><img src='#{value}'></p>"
      when 'username'
        properties << "<p><b>#{key}:</b> <a class='aside-text' href='https://twitter.com/#{value}' target='_blank'>#{value}</a></p>"
      else
        properties << "<p><b>#{key}:</b> #{value}</p>"
      end
    end
    properties + "</div>"
  end
end
