class Move
  include Mongoid::Document
  include Stateflow

  belongs_to :customer

  has_many :bids

  embeds_one :from_address, class_name: 'Address'
  embeds_one :to_address, class_name: 'Address'

  has_one :inventory

  accepts_nested_attributes_for :from_address, :to_address, :inventory

  field :date, type: Date
  field :date_tolerance, type: Integer

  field :distance
  field :state
  

  stateflow do 
    initial :incomplete
    state :incomplete, :pending, :assigned, :completed, :canceled
    
  end

  after_create do |record|
    Inventory.create(move_id: record.id)
    update_distance
  end

  private
    def update_distance
      update_attribute(:distance, find_distance)  
    end

    def find_distance
      Geocoder::Calculations.distance_between(from_address.coordinates, to_address.coordinates).round(2)
    end



end
