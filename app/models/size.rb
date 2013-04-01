class Size
  include Mongoid::Document

  embedded_in :template, polymorphic: true

  field :title, type: String, default: "medium"

  field :l, type: Integer, default: 1
  field :w, type: Integer, default: 1
  field :h, type: Integer, default: 1
  field :units, type: String, default: "in."

  validates_inclusion_of :units, in: %w{in. ft.}

end
