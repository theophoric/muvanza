class HomeTemplate
  include Mongoid::Document
  include ExtendReferenceWithQuantity
  

  field :title

  has_and_belongs_to_many :room_templates
  has_many :homes

  embeds_many :reference_counters, as: :extend_habtm_relationships

  

end
