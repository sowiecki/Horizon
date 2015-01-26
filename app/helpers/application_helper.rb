module ApplicationHelper
  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def neo_id_for(model, string)
    model.find_by(name: string).neo_id
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
      # details_html: "<h2>#{me["username"]}</h2>\n<p class='summary'>\n#{get_properties(me)}</p>\n",
      details_html: "<img class='aside-user-avatar' src='#{me['avatar']}' /><h3>#{me['name']}</h3><p>#{me['bio']}#{me['description']}</p>",
      data: {
        attributes: relationships, name: me["name"], id: params[:id]
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
    # ["<div class='aside-box'>",
    # "<img class='aside-user-avatar' src='#{node['avatar']}' />",
    # "",
    # "<p>#{node['bio']}</p>",
    # "</div>"].join
    # properties = "<div class='aside-box'>"
    # node.each_pair do |key, value|
    #   case key
    #   # when 'title'
    #   #   properties << "<h3><b>#{key}:</b> #{value}</h3>"
    #   when 'avatar'
    #     hash[:avatar] = value
    #     properties << "<p><img class='current-user-avatar' src='#{value}'></p>"
    #   when 'name'
    #     properties << "<h3>#{value}</h3>"
    #   when 'username'
    #     properties << "<p><b>Twitter:</b> <a class='aside-text' href='https://twitter.com/#{value}' target='_blank'>#{value}</a></p>"
    #   when 'description'
    #     properties << "<p><b>Description:</b> #{value}"
    #   else
    #     properties << "<p><b>#{key}:</b> #{value}</p>"
    #   end
    # end
    # properties + "</div>"
    "<img class='aside-user-avatar' src='#{me['avatar']}' /><h3>#{me['name']}</h3><p>#{me['bio']}"
  end
end
