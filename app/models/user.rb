class User
  include Neo4j::ActiveNode
  has_many :out, :issues
  has_many :out, :followers, type: :followers, model_class: User
  has_many :in, :followees, type: :followees, model_class: User

  # before_create do
  #   self.twitter = self.twitter.downcase
  # end

  after_create do
    self.set_friend_ids
  end

  property :name, type: String
  property :username, type: String
  property :twitter, type: String
  property :bio, type: String
  property :avatar, type: String
  property :friend_ids, type: String
  property :access_token, type: String
  property :access_token_secret, type: String
  index :twitter

  property :uid, type: String
  property :provider, type: String

  property :created_at, type: DateTime
  property :updated_at, type: DateTime


  # validates :twitter, presence: true, uniqueness: true


  # VALID_USERNAME_REGEX = /\s/
  # validates :username,  presence: true, uniqueness: true,
  #     length: { minimum: 3, maximum: 20 },
  #     format: { without: VALID_USERNAME_REGEX }


  def self.create_with_omniauth(auth)
    create! do |user| # OMFG remove this bang before production
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
      user.twitter = auth["info"]["urls"]["Twitter"]
      user.avatar = auth["info"]["image"]
      user.name = auth["info"]["name"]
      user.bio = auth["info"]["description"]
    end
  end

  def set_friends
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = self.access_token
      config.access_token_secret = self.access_token_secret
    end
    user = User.find_by(username: 'NaseZero')
    self.friend_ids = client.friend_ids(self.username).to_a.each do |uid|
      user.followees << User.find_or_create_by(uid: uid.to_s)
    end
  end
end
