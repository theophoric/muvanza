class InventoriesController < ApplicationController

  def edit
    @move = Move.find(params[:move_id])
    @inventory = @move.inventory
    @items_by_room = @inventory.items.group_by(&:room)
    @room_names = ItemTemplate.room_names
    @item_templates = ItemTemplate.where(room: @room_names.first).group_by(&:item_group)
  end

  def filter_item_templates
    @move = Move.find(params[:move_id])
    @room_name = params[:room_name]
    @item_templates = ItemTemplate.where(room: @room_name).group_by(&:item_group)
  end

  def update
    inventory.update_attributes(params[:inventory])
  end

  def add_item
    @move = Move.find(params[:move_id])
    @inventory = @move.inventory
    item_template = ItemTemplate.find(params[:item_template_id])
    @item = @inventory.items.find_or_initialize_by(
      room: item_template.room,
      name: item_template.name,
      volume: item_template.volume
      )
    @item.quantity += 1
    @item.save
    @item_count = @inventory.total_item_quantity
    @volume_count = @inventory.total_item_volume
  end

  def duplicate_item
    
  end

  def move
    @move ||= Move.find(params[:move_id])
  end

  def inventory
    @inventory ||= @move.inventory
  end
end