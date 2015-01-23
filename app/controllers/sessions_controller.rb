class SessionsController < ApplicationController
  include SessionsHelper

  def new

  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    # if current_user
    redirect_to root_url, :notice => "You've been signed in. | "
    # else
    #   render '/login'
    # end
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end
end
