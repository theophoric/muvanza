class Home
  include Mongoid::Document

  belongs_to :template, class_name: "HomeTemplate"

  belongs_to :move

  has_many :rooms

  embeds_one :address

  validates_associated :template

  after_create :generate_from_template


  private
    def generate_from_template
      template.room_templates.each do |room_template|
        rooms.create(room_template: room_template)
      end
    end



end
