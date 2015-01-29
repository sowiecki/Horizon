class UsersController < ApplicationController
  include UsersHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
  end

  def follow
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = current_user.access_token
      config.access_token_secret = current_user.access_token_secret
    end

    client.follow(params["screen_name"])
    current_user.followees << User.find_by(username: params["screen_name"]) unless current_user.followees.include?(User.find_by(username: params["screen_name"]))
    render json: 'Successfully followed.'
  end

  def twitter_redirect
    redirect_to current_user_path
  end

  def show
    # @user_friend_ids = [17762060, 31583882] # Mock to use in case we hit rate limit

    @user_friend_ids = []
    current_user.followees.to_a.each { |followee| @user_friend_ids << followee.uid.to_i }
    @categories_hash = {}
    @known_experts_hash = {}
    @unknown_experts_hash = {}

    Category.all.each do |category|
      # Your Known Experts By Category
      # Your Unknown Experts By Category
      h = {}
      known_experts = []
      unknown_experts = []

      # Iterate through each issue to build our hashy hash of user-specific expert data
      category.issues.each do |issue_object|
        h[issue_object.name] = v = find_correct_users(@user_friend_ids, issue_object)
        known_experts += v[:known]
        unknown_experts += v[:unknown]
      end

      @known_experts_hash[category.name] = known_experts.uniq
      @unknown_experts_hash[category.name] = unknown_experts.uniq
      @categories_hash[category.name] = h
    end

    # Find Your Least-Followed Category
    @longest_name, @longest_array = @unknown_experts_hash.sort {|x,y| y[1].length <=> x[1].length }.first
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user]
  end

  def find_correct_users(user_friend_ids, issue_object)
    # the current array of expert ids for this issue
    perspective_ids = issue_object.perspectives.map {|x| x.uid.to_i }
    {unknown: perspective_ids - user_friend_ids, known: user_friend_ids & perspective_ids}
  end
end

