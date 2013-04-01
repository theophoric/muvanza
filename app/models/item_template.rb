class ItemTemplate
  include Mongoid::Document
  include Template

  has_many :items

end