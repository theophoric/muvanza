class HomeTemplate
  include Mongoid::Document
  include Template

  has_many :homes

end
