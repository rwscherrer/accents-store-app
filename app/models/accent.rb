class Accent < ApplicationRecord
  def discounted?
    price.to_f < 2
  end
 
  def tax
    price.to_f * 0.09 
  end

  def total
    price.to_f + tax.to_f
  end

end
