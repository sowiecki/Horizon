class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    session[:token] = auth["token"]
    session[:secret] = auth["secret"]
    redirect_to root_url, :notice => "You've been signed in. | "
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end
end
