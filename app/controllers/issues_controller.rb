class IssuesController < ApplicationController

  def index
  end

  def show
  end

  def follow
    client.follow(params[:id])
    redirect '/'
  end

end
