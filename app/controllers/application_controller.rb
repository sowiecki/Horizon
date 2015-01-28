class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :client

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end




  def client
    # request_token = session[:twitter_request_token]

    # access_token = request_token.get_access_token(:oauth_verifier => params[:oauth_verifier])

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = "2765930482-mwWhH2PnVBaAxA1knQ5njIsEjFgTxPde1P48PMV"
      config.access_token_secret = "H5OaZitCra0h42JLE9NkWX53dtYGQfL4yUUpYcp20cUIS"
    end
    return client
  end
end
