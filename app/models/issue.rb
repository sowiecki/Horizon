class Issue
  include Neo4j::ActiveNode

  has_many :in, :categories
  has_many :out, :users, model_class: User
  has_many :in, :experts, model_class: User


  property  :title, type: String
end
