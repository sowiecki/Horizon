class ResourcesController < ApplicationController
  include ApplicationHelper

  def show
    render json: node
  end
end
