class RoomTemplate
  include Mongoid::Document
  include Template

  has_many :rooms

end
