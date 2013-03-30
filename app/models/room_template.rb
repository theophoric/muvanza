class RoomTemplate
  include Mongoid::Document

  field :title
  field :description

  has_and_belongs_to_many :home_templates
  has_and_belongs_to_many :item_templates

  has_many :rooms

end
