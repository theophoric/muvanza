class ItemTemplate
  include Mongoid::Document
  
  field :room
  field :item_group
  field :name
  field :volume, type: Integer

  class << self
    def room_names
      @room_names ||= ItemTemplate.all.collect(&:room).uniq.compact
    end
  end

end