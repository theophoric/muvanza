class ReferenceCounter
  include Mongoid::Document

  embedded_in :extend_reference_with_quantity, polymorphic: true
  belongs_to :referenced

  field :quantity, type: Integer, default: 1

end
