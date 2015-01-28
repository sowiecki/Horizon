class UsersController < ApplicationController
  include UsersHelper

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  def index
    @users = User.all
  end

  def follow
    client.follow(params["screen_name"])
    render json: 'Successfully followed.'
  end

  def twitter_redirect
    redirect_to current_user_path
  end

  def show
    # Get the User's friend IDs
    # @user_friend_ids = [17762060, 31583882] # Fucking rate limit
    @user_friend_ids = client.friend_ids(current_user.username).to_a
    @categories_hash = {}
    # Iterate through each category
    Category.all.each do |category|
      @categories_hash[category.name] = {}
      # Iterate through each issue to build our hashy hash of user-specific expert data
      category.issues.each do |issue_object|
        @issue_hash = find_correct_users(@user_friend_ids,issue_object)

        @issue_hash[:known].each do |perspective_id|
          User.find_by(uid: perspective_id.to_s).name
        end

        @issue_hash[:unknown].each do |perspective_id|
          User.find_by(uid: perspective_id.to_s).name
        end

        @categories_hash[category.name][issue_object.name] = @issue_hash
      end
    end

    # Your Known Experts By Category
    @known_experts_hash = {}
    Category.all.each do |category|
      @known_experts_array = []
      @categories_hash[category.name].each do |key, value|
        @known_experts_array << value[:known]
      end
      @known_experts_array = @known_experts_array.flatten.uniq

      @known_experts_hash[category.name] = @known_experts_array
    end
    # Your Unknown Experts By Category
    @unknown_experts_hash = {}
    Category.all.each do |category|
      @unknown_experts_array = []
      @categories_hash[category.name].each do |key, value|
        @unknown_experts_array << value[:unknown]
      end
      @unknown_experts_array = @unknown_experts_array.flatten.uniq

      @unknown_experts_hash[category.name] = @unknown_experts_array
    end

    # Find Your Least-Followed Category
    @longest_name = ""
    @longest_array = []
    @unknown_experts_hash.each do |name, id_array|
      if id_array.length >= @longest_array.length
        @longest_array = id_array
        @longest_name = name
      end
    end
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
    #the current user's array of ids of people they follow
    @user_friend_ids = user_friend_ids

    # the current array of expert ids for this issue
    perspective_ids = return_perspective_ids(issue_object)
    @unknown_friend_ids = []
    @known_friend_ids = []

    # people in our database you don't currently follow
    @unknown_friend_ids = perspective_ids - @user_friend_ids

    # people in our database you do currently follow
    @known_friend_ids = @user_friend_ids & perspective_ids

    sorted_perspectives = {unknown: @unknown_friend_ids, known: @known_friend_ids}
  end

  def return_perspective_ids(issue_object)
    perspective_ids = []
    issue_object.perspectives.each do |perspective|
      perspective_ids << perspective.uid.to_i
    end
    perspective_ids
  end
end

