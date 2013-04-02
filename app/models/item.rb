class Item
  include Mongoid::Document

  embedded_in :inventory

  field :room
  field :group
  field :name
  field :volume, type: Integer, default: 0
  field :quantity, type: Integer, default: 0

  def total_volume
    volume * quantity
  end

end