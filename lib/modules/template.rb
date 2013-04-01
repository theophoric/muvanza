module Template

  def self.included base
    base.field :description
    base.field :title

    base.embeds_many :subtemplate_references, as: :template
    base.embeds_many :sizes, as: :template

  end


  def subtemplates
    subtemplate_references.uniq(&:template_id).collect(&:subtemplate)
  end

  def set_subtemplate_quantity subtemplate, quantity = 1
    subtemplate = subtemplate_references.find_or_initize_by(subtemplate: subtemplate)
    subtemplate.quantity = quantity
    subtemplate.save
  end

  def subtemplate_quantity subtemplate
    subtemplate_references.find_by(subtemplate: subtemplate)
  end

  def delete_subtemplate subtemplate
    subtemplate = subtemplate_references.find_by(subtemplate: subtemplate).delete
  end

  def remove_subtemplate subtemplate, quantity = 1
    subtemplate = subtemplate_references.find_by(subtemplate: subtemplate)
  end

end