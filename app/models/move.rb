class Move
  include Mongoid::Document
  include Stateflow

  belongs_to :customer

  has_many :bids

  field :date, type: Date
  field :date_tolerance, type: Integer

  field :distance
  field :state

  has_one :home, autosave: true
  
  stateflow do 
    initial :incomplete
    state :incomplete, :pending, :assigned, :completed, :canceled
    
  end

  after_create do |record|
    Inventory.create(move_id: record.id)
    # update_distance
  end

  private

    def default_home_template
      raise "not yet implemented"
    end

    def update_distance
      update_attribute(:distance, find_distance)  
    end

    def find_distance
      Geocoder::Calculations.distance_between(from_address.coordinates, to_address.coordinates).round(2)
    end



end
