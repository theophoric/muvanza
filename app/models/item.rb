class Item
  include Mongoid::Document

  belongs_to :template, class_name: "ItemTemplate"
  belongs_to :room
  embeds_one :item_size

  field :title
  field :description
  field :quantity, type: Integer
  field :size


  after_create :generate_from_template

  private

    def generate_from_template

    end
  
end 



class BoxItem < Item



end

# class Dimension
#   include Mongoid::Document

#   field :length
#   field :width
#   field :units


# end