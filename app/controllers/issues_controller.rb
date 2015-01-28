class IssuesController < ApplicationController

  def index
    extract_relevant_tweets('djdewitt',["tech","podcast","belieber", "salute"])
  end

  def show
    temp_usernames =
    %w(lessig
    markknoller
    nhrebellion
    WolfPAChq
    tnr
    unPAC
    KarlRove)

    temp_usernames.each do |temp_username|
    twitter_object = client.user(temp_username)
    @user_create_string = "User.create({provider: 'twitter', uid: '" + twitter_object.id.to_s + "', username: '" + temp_username + "', twitter: 'https://twitter.com/" + temp_username + "', avatar: '" + twitter_object.profile_image_url + "', name: '" + twitter_object.name + "', bio: '" + twitter_object.description + "'})"
    @user_create_string
  end

    # issue_id = params[:id]
    # @issue = Issue.find_by(uuid: issue_id)

    # # # Gather the Expert IDs for this issue
    # @expert_ids = []
    # @issue.perspectives.each do |expert|
    #    @expert_ids << expert.uid
    #  end

    # # # TEMP SOLUTION: Make a twitter request for your Friend IDs
    #  @my_friend_ids = client.friend_ids(current_user.username).to_a

    # # # current_user.friend_ids = client.friend_ids(current_user.username).to_a

    # # # @my_friend_ids = current_user.friend_ids

    # # # TEMP SOLUTION: We should be comparing arrays of objects, not IDs
    # #@rec_perspectives = []
    #  @rec_perspectives = @expert_ids - @my_friend_ids
    #  #@my_perspectives = []
    #  @my_perspectives = @my_friend_ids & @expert_ids
  end
end
