class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]

    # Finding an existing or creating a new User object when logging in with Twitter
    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)

    # Assigning Session
    session[:user_id] = user.id
    session[:consumer_token] = auth.credentials.token
    session[:consumer_secret] = auth.credentials.secret

    redirect_to "/users/#{current_user.neo_id}", :notice => "<span id='first-login'>You've been signed in.</span> | "
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end
end
