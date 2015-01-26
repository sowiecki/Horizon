module ApplicationHelper
  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def neo_id_for(string)
    Category.find_by(name: string).neo_id
  end

  def neo_id_for(model, string)
    model.find_by(name: string).neo_id
  end

  def hashify(results)
    results["data"].map {|row| Hash[*results["columns"].zip(row).flatten] }
  end

  def node
    id = params[:id] || current_user.neo_id
    cypher = "START me=node(#{id})
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
      details_html: "#{aside_content(me)}",
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

  def aside_content(node)
    if Category.find_by(name: node['name'])
      string = "<h3>#{node['name']}</h3><p>#{node['description']}</p>"
    elsif Issue.find_by(name: node['name'])
      string = "<h3>#{node['name']}</h3><p>#{node['description']}</p>"
    elsif User.find_by(name: node['name'])
      string = "<a target='_blank' class='aside-text' href='#{node['twitter']}'><img class='aside-user-avatar' src='#{node['avatar']}' /><h3>#{node['name']}</h3></a><p><b>Description:</b> #{node['bio']}#{node['description']}</p>"
    end
    "<div id='aside-filler'>#{string}</div>"
  end
end
