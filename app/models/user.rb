class User
  include Neo4j::ActiveNode
  has_many :out, :issues
  has_many :out, :followers, type: :followers, model_class: User
  has_many :in, :followees, type: :followees, model_class: User


  property :username, type: String
  property :twitter, type: String
  property :avatar, type: String
  index :twitter

  property :uid, type: String
  property :provider, type: String

  property :created_at, type: DateTime
  property :updated_at, type: DateTime



  validates_uniqueness_of(:twitter)
  # validates :username, :presence => true

  # before_save { self.email = email.downcase }

  # VALID_USERNAME_REGEX = /\s/
  # validates :username,  presence: true, uniqueness: true,
  #     length: { minimum: 3, maximum: 20 },
  #     format: { without: VALID_USERNAME_REGEX }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, uniqueness: true,
  #                 length: { maximum: 255 },
  #                 format: { with: VALID_EMAIL_REGEX },
  #                 uniqueness: { case_sensitive: false }
  # validates :twitter, presence: true, uniqueness: true

  def self.create_with_omniauth(auth)
    create! do |user| # OMFG remove this bang before production
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
      user.twitter = auth["info"]["urls"]["Twitter"]
      user.avatar = auth["info"]["image"]
    end
  end
end
