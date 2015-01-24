class WelcomeController < ApplicationController
  include ApplicationHelper

  def index
    create_graph
    @neoid = params["neoid"] || 1
  end
end
