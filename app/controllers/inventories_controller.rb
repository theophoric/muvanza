class InventoriesController < ApplicationController

  def edit
    @move = Move.find(params[:move_id])
    @inventory = @move.inventory
    @items_count = @inventory.items.count
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
    @item = @inventory.items.create(item_template.attributes.except('_id'))
    @item_count = @inventory.items.count
    @item_volume = @inventory.items.sum(:volume)
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