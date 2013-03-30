class Measurements
  include Mongoid::Document

  field :units, type: String
  field :l, type: Integer
  field :h, type: Integer
  field :w, type: Integer

end
