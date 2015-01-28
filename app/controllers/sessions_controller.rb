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

  # def create
#     require 'oauth'
#    auth = request.env["omniauth.auth"]

#    consumer = get_consumer
#
#    # Re-create the request token
#    @request_token = consumer.get_request_token
#    p params[:oauth_verifier]
#    # Convert the request token to an access token using the verifier Twitter gave us
#    @access_token = @request_token.get_access_token(:oauth_verifier =>
#        params[:oauth_verifier])
#    # Finding an existing or creating a new User object when logging in with Twitter
#    user = User.find_by(provider: auth["provider"], uid: auth["uid"]) || User.create_with_omniauth(auth)

#    # Store the token and secret that we need to make API calls
#    session[:oauth_token] = @access_token.token
#    session[:oauth_secret] = @access_token.secret


#    # Hand off to our app, which actually uses the API with the above token and secret
#    redirect_to '/'
#  end
#
#  def oauth
#    # Making sure the User object has a list of friend_ids
#    # user.friend_ids = client.friend_ids(current_user.username).to_a

#    redirect_to root_url, :notice => "<span id='first-login'>You've been signed in.</span> | "
#    end

#
#
#  private
#
#  def get_consumer
#    OAuth::Consumer.new(ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET'],
#      {
#        :oauth_signature_method => 'HMAC-SHA1',
#        :request_token_path => 'https://api.twitter.com/oauth/request_token',
#        :authorize_path =>  'https://api.twitter.com/oauth/authorize',
#        :access_token_path => 'https://api.twitter.com/oauth/access_token'
#      }
#    )
#  end

# end

end
