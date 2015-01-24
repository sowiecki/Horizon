module ApplicationHelper
  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def hashify(results)
    results["data"].map {|row| Hash[*results["columns"].zip(row).flatten] }
  end

  def create_graph

    # return if neo.execute_query("MATCH (n:Person) RETURN COUNT(n)")["data"].first.first > 1

    # guys = %w[Sean]
    # girls = %w[Alesha Bethany Carrie Darcey Emely Frida Gabrielle Helene Isabelle Jacqualine Katheryn Lora Megan Nathalie Olivia Patricia Rachael Shanon Tiffany Vannessa Wendie Xuan Yolonda Zofia]
    # cities = %w[Chicago]
    # attributes = %w[Social Test Liberal Conservative]

    # cypher = "CREATE (n:Person {nodes}) RETURN  ID(n) AS id, n.name AS name"

    # nodes = []
    # guys.each { |n| nodes <<  {"name" => n, "gender" => "male"} }
    # girls.each { |n| nodes << {"name" => n, "gender" => "female"} }
    # users = hashify(neo.execute_query(cypher, {:nodes => nodes}))

    # nodes = []
    # cities.each { |n| nodes << {"name" => n} }
    # cities = hashify(neo.execute_query(cypher, {:nodes => nodes}))

    # nodes = []
    # attributes.each { |n| nodes << {"name" => n} }
    # attributes = hashify(neo.execute_query(cypher, {:nodes => nodes}))

    # neo.execute_query("CREATE INDEX ON :Person(name)")

    # commands = []
    # users.each do |user|
    #   commands << [:create_relationship, "lives_in", user["id"], cities.sample["id"], nil]
    # end
    # neo.batch *commands

    # users.each do |user|
    #   commands = []
    #   users.sample(3 + rand(10)).each do |att|
    #     commands << [:create_relationship, "friends", user["id"], att["id"], nil] unless (att["id"] == user["id"])
    #   end
    #   neo.batch *commands
    # end

    # users.each do |user|
    #   commands = []
    #   attributes.sample(10 + rand(10)).each do |att|
    #     commands << [:create_relationship, "has", user["id"], att["id"], nil]
    #   end
    #   neo.batch *commands
    # end

    # users.each do |user|
    #   commands = []
    #   attributes.sample(10 + rand(10)).each do |att|
    #     commands << [:create_relationship, "wants", user["id"], att["id"], nil]
    #   end
    #   neo.batch *commands
    # end
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
    properties = "<ul>"
    node.each_pair do |key, value|
      if key == "avatar_url"
        properties << "<li><img src='#{value}'></li>"
      else
        properties << "<li><b>#{key}:</b> #{value}</li>"
      end
    end
    properties + "</ul>"
  end
end
