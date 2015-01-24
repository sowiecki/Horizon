class IssuesController < ApplicationController

  def index

  end

  def show
    issue_id = params[:id]
    @issue = Issue.find_by(uuid: issue_id)

    # Gather the Expert IDs for this issue
    @expert_ids = []
    @issue.experts.each do |expert|
      @expert_ids << expert.uid
    end

    # TEMP SOLUTION: Make a twitter request for your Friend IDs
    @my_friend_ids = client.friend_ids(current_user.username).to_a

    # TEMP SOLUTION: We should be comparing arrays of objects, not IDs
    #@rec_experts = []
    @rec_experts = @expert_ids - @my_friend_ids

    #@my_experts = []
    @my_experts = @my_friend_ids & @expert_ids

  end

  def follow
    client.follow(params[:id])

    redirect '/'
  end

end
