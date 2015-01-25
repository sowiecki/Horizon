module ApplicationHelper
  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def hashify(results)
    results["data"].map {|row| Hash[*results["columns"].zip(row).flatten] }
  end

  def seed_graph

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
