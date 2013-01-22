class Inventory
  include Mongoid::Document

  belongs_to :move

  embeds_many :items

  accepts_nested_attributes_for :items


end
