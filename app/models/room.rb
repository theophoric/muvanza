class Room
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :description
  
  belongs_to :home
  belongs_to :template, class_name: "RoomTemplate"
  has_many :items

  validates_associated :template, :home

  after_create :generate_from_template

  def add_item item_template
    
  end


  private
    def generate_from_template
      template.item_templates.each do |item_template|
        items.create(item_template: item_template)
      end
    end

end