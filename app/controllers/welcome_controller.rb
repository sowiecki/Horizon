class WelcomeController < ApplicationController
  include ApplicationHelper

  def index
    create_graph
    @neoid = params["neoid"] || current_user.neo_id if logged_in?
  end
end
