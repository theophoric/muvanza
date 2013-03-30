module Template

  def self.included base
    base.field :description
    base.field :title
    base.field :size # replace this field with an embedded size object
  end
  
end