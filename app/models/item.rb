class Item
  include Mongoid::Document

  embedded_in :inventory

  field :room
  field :group
  field :name
  field :volume, type: Integer
  field :quantity, type: Integer
  
end 


class BoxItem < Item



end

# class Dimension
#   include Mongoid::Document

#   field :length
#   field :width
#   field :units


# end