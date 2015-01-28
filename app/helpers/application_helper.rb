module ApplicationHelper
<<<<<<< HEAD
=======


>>>>>>> cbac124ef8540f69aac68df033623d1dafcea6ed
  def find_correct_users(user_friend_ids, issue_object)
    #the current user's array of ids of people they follow
    @user_friend_ids = user_friend_ids

    # the current array of expert ids for this issue
    perspective_ids = return_perspective_ids(issue_object)

    @unknown_friend_ids = []
    @known_friend_ids = []

    # people in our database you don't currently follow
    @unknown_friend_ids = perspective_ids - @user_friend_ids

    # people in our database you do currently follow
    @known_friend_ids = @user_friend_ids & perspective_ids

    sorted_perspectives = {unknown: @unknown_friend_ids, known: @known_friend_ids}
  end

  def return_perspective_ids(issue_object)
    perspective_ids = []
    issue_object.perspectives.each do |perspective|
      perspective_ids << perspective.uid.to_i
    end
    perspective_ids
  end


  # Extracting Most Recent Issue-Relevant Tweets from a provided user


  def extract_relevant_tweets(uid, keywords=[])
    tweet_texts = get_text_from_tweets(uid)
    needfilter_orig?(tweet_texts, keywords)
  end

  # Get most recent 100 tweets of passed user
  def extract_user_timeline(uid)
    client.user_timeline(uid).take(5)
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

  def twitter_script
    "<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>"
  end

  def neo
    @neo = Neography::Rest.new(ENV["GRAPHENEDB_URL"] || "http://localhost:7474")
  end

  def neo_id_for(model, string)
    "#{model.find_by(name: string).neo_id}"
  end

  def button_class(string)
    if request.original_url == root_url(neoid: neo_id_for(Category, string))
      'category-button-current'
    else
      'category-button'
    end
  end

  def neo_link_to(string)
    link_to string, root_path(neoid: neo_id_for(Category, string)), :class => button_class(string)
  end

  def hashify(results)
    results["data"].map {|row| Hash[*results["columns"].zip(row).flatten] }
  end

  def node # Neovigator
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

    relationships = [{"name" => "No Links","values" => [{"id" => "#{params[:id]}","name" => "No Links "}]}] if relationships.empty?

    {
      details_html: "#{aside_content(me)}",
      data: {
        attributes: relationships, name: me["name"], id: params[:id]
      }
    }
  end

  def node_id(node) # Neovigator
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
      string = "<h1>#{node['name']}</h1><p>#{node['description']}</p>"
    elsif Issue.find_by(name: node['name'])
      string = "<h1 class='issue'>#{node['name']}</h1><p>#{node['description']}</p>"
    elsif user = User.find_by(name: node['name'])
      # user_tweets = extract_user_tweets(User.find_by(name: node['name'])).uid
      # p extract_relevant_tweets('nasezero', ['space', 'the', 'a'])

      tweets = get_text_from_tweets(user.username)
      tweets.map! { |tweet| tweet + "<br><br>" }
      string = [
                "<a target='_blank' class='aside-text' href='#{node['twitter']}'>",
                "<img class='aside-user-avatar' src='#{node['avatar']}' />",
                "<h3 class='twitter-link'>",
                "#{node['name']}<img class='twitter_icon' height='19.5px' width='24px' src='http://platform.twitter.com/images/bird.png' /></h3></a>",
                "<p>#{node['bio']}</p>",
                "<h4>Recently tweeted:</h4>",
                "<div class='tweet-text'>#{tweets.join}</div>",
                # "#{twitter_script}<a href='https://twitter.com/#{user.username}' class='twitter-follow-button' data-show-count='false'></a>"

                "<form class= 'follow' action='users/follow/'' method= 'post'>
                  <input name = 'screen_name' type='hidden' value=#{user.name}>
                  <input name='original_referer' type='hidden' value='http://platform.twitter.com/widgets/follow_button.df71e9fd75415d2cee8cfded99ebe79f.en.html'>
                  <input type='hidden' name='profile_id' value='user.neo_id'>
                  <input name = 'screen_name' type='hidden' value=#{user.username}>
                  <input type='submit' value='follow'>
                </form>"
      ].join
    end
    "<div id='aside-filler'>#{string}<span class='instruct'>(Draggable)</span></div>"
  end


end
