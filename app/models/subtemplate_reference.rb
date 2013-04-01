class SubtemplateReference
  include Mongoid::Document

  embedded_in :template, polymorphic: true
  belongs_to :subtemplate, polymorphic: true

  field :quantity, type: Integer, default: 1
  field :size


end