class IssuesController < ApplicationController

  def index

  end

  def show
    issue_id = params[:id]

    client.follow('neiltyson')

    @issue = Issue.find_by(uuid: issue_id)
  end

  def follow
    client.follow(params[:id])

    redirect '/'
  end

end
