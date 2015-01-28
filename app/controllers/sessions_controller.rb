class SessionsController < ApplicationController
  def new
  end

  def create
    require 'oauth'

    consumer = get_consumer
    
    # Re-create the request token
    @request_token = consumer.get_request_token
    p params[:oauth_verifier]
    # Convert the request token to an access token using the verifier Twitter gave us
    @access_token = @request_token.get_access_token(:oauth_verifier =>
        params[:oauth_verifier])

    # Store the token and secret that we need to make API calls
    session[:oauth_token] = @access_token.token
    session[:oauth_secret] = @access_token.secret

    # Hand off to our app, which actually uses the API with the above token and secret
    redirect_to '/'
  end
  
  def oauth

  end


  def destroy
    session.clear
    redirect_to root_url, :notice => "You've been signed out."
  end

  private
  
  def get_consumer
    OAuth::Consumer.new(ENV['CONSUMER_KEY'], ENV['CONSUMER_SECRET'], 
      {
        :oauth_signature_method => 'HMAC-SHA1',
        :request_token_path => 'https://api.twitter.com/oauth/request_token',
        :authorize_path =>  'https://api.twitter.com/oauth/authorize',
        :access_token_path => 'https://api.twitter.com/oauth/access_token'
      }
    )
  end


end

