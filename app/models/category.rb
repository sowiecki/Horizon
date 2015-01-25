class Category
  include Neo4j::ActiveNode

  has_many :out, :issues
  has_many :in, :users

  propery  :name, type: String
  property :description, type: String



end
