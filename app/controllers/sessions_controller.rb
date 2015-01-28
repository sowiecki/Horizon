class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]


    # Finding an existing or creating a new User object when logging in with Twitter
    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)

    # Assigning Session
    session[:user_id] = user.id


    # Making sure the User object has a list of friend_ids
    # user.friend_ids = client.friend_ids(current_user.username).to_a

    redirect_to root_url, :notice => "<span id='first-login'>You've been signed in.</span> | "
  end

  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end

  private

  def prepare_access_token(oauth_token, oauth_token_secret)
    consumer = OAuth::Consumer.new(ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET'], { :site => "https://api.twitter.com", :scheme => :header })


    # now create the access token object from passed values
    token_hash = { :oauth_token => oauth_token, :oauth_token_secret => oauth_token_secret }
    access_token = OAuth::AccessToken.from_hash(consumer, token_hash )

    return access_token
  end
end
