class InventoriesController < ApplicationController
  helper_method :move, :inventory, :room_names, :item_names
  before_filter :move, :inventory

  def edit;end

  def update
    inventory.update_attributes(params[:inventory])
  end

  def add_item
    inventory.items.create(params[:item])
    render :edit
  end

  def duplicate_item
    
  end

  def move
    @move ||= Move.find(params[:move_id])
  end

  def inventory
    @inventory ||= @move.inventory
  end

  def room_names
    %w{master_bed_room bed_room_1 bed_room_2 bath_room kitchen living_room dining_room}
  end

  def item_names
    %w{bed sofa coffee_table dining_table dining_chair lounge_chair television refrigerator box dresser}
  end

end