class Address
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  embedded_in :move

  field :full_street_address
  field :coordinates, type: Array

  geocoded_by :full_street_address
  after_validation :geocode

  def longitude
    coordinates[0]
  end

  def latitude
    coordinates[1]
  end
  
end
