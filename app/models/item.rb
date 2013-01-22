class Item
  include Mongoid::Document

  embedded_in :inventory

  field :name
  field :quantity, type: Integer
  field :item_type
  
end 


class BoxItem < Item



end

# class Dimension
#   include Mongoid::Document

#   field :length
#   field :width
#   field :units


# end