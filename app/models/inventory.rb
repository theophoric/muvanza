class Inventory
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :move

  embeds_many :items

  accepts_nested_attributes_for :items


  def total_item_quantity
    items.sum(:quantity)
  end

  def total_item_volume
    items.sum{|i| i.quantity * i.volume }
  end

end
