class Bid
  include Mongoid::Document
  include Stateflow

  belongs_to :company
  belongs_to :move

  field :amount


  stateflow do
    state :pending, :accepted, :rejected
    initial :pending

    event :accept do
      transitions from: :pending, to: :accepted
    end
    event :reject do
      transitions from: :pending, to: :rejected
    end
  end

end
