class ItemSize
  include Mongoid::Document

  embedded_in :item, :item_template
  # embedded_in :sizeable 
  embeds_one :measurements

  field :title

end
