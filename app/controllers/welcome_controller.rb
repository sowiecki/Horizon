class WelcomeController < ApplicationController
  include ApplicationHelper

  def index
    # @neoid = params["neoid"] || current_user.neo_id if logged_in?
  end
end
