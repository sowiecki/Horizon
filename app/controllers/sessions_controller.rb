class SessionsController < ApplicationController
  include SessionsHelper

  def new

  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    # if current_user
      redirect_to root_url, :notice => "Signed in!"
    # else
    #   render '/login'
    # end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
