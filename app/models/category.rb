class Category
  include Neo4j::ActiveNode

  has_many :out, :issues

  property  :title, type: String



end
