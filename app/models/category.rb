class Category
  include Neo4j::ActiveNode

  has_many :out, :issues
  has_many :in, :users

  property  :title, type: String



end
