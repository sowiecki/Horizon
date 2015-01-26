module ApplicationHelper

  def extract_relevant_tweets(uid, keywords=[])
      tweet_texts = get_text_from_tweets(uid)
      needfilter_orig?(tweet_texts, keywords)
  end

  # Get most recent 100 tweets of passed user
  def extract_user_timeline(uid)
      client.user_timeline(uid).take(500)
  end

  # Scan through the array of tweet objects
  def get_text_from_tweets(uid)
      tweet_timeline = extract_user_timeline(uid)
      tweet_timeline.map do |tweet_object|
      #check the tweet object's text for any of our keywords
          tweet_object.text
      end
  end

  def needfilter_orig?(array_of_tweet_messages, keywords = [])
      fitting_tweets = []
      array_of_tweet_messages.each do |tweet_msg|
          keywords.each do |kw|
              fitting_tweets << tweet_msg if tweet_msg.include? kw
          end
      end

     fitting_tweets
  end


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
      string = "<a target='_blank' class='aside-text' href='#{node['twitter']}'><img class='aside-user-avatar' src='#{node['avatar']}' /><h3><img src='http://platform.twitter.com/images/bird.png' /> #{node['name']}</h3></a><p><b>Description:</b> #{node['bio']}#{node['description']}</p>"
    end
    "<div id='aside-filler'>#{string}<span class='instruct'>(Drag me)</span></div>"
  end
end
