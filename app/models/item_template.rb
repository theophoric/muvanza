class ItemTemplate
  include Mongoid::Document
  include ExtendReferenceWithQuantity
  include Template
  
  has_and_belongs_to_many :room_templates

  has_many :items

  field :size # this will likely be changed to an embedded size

  def build_item(size = default_size)
    Item.new do |item|
      item.title = title
      item.size = size
      item.template_id = id
      item.quantity = 1
    end
  end

  def default_size
    "medium"
  end


end