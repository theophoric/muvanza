module ExtendReferenceWithQuantity
  def self.included base
    base.embeds_many :reference_counters, as: :extend_reference_with_quantity
  end

  def referenced_quantity reference
    reference_counters.first(referenced: reference).quantity
  end

  def set_referenced_quantity reference, quantity = 1
    _reference_counter = reference_counters.find_or_initialize_by(referenced: reference)
    _reference_counter.quantity = quantity
    _reference.save
  end

  def to_s
    title
  end

end