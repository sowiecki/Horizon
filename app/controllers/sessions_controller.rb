class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]

    # Finding an existing or creating a new User object when logging in with Twitter
    if user = User.find_by(provider: auth["provider"], uid: auth["uid"])

    else
      user = User.create_with_omniauth(auth)
      user.set_friends
    end
    # Assigning Session
    session[:user_id] = user.id
    current_user.access_token = auth.credentials.token
    current_user.access_token_secret = auth.credentials.secret
    current_user.save

    redirect_to "/users/#{current_user.neo_id}", :notice => "<span id='first-login'>You've been signed in.</span> | "
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end
end
