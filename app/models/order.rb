class Order < ApplicationRecord
  belongs_to :user
  has_many :accents
  has_many :carted_products


  def pretty_created_at
    created_at.strftime("%A, %b %d")
  end

  def id_present_to_customer
    34000 + id
  end

  def calculate_subtotal(accent_object)
    self.subtotal = accent_object.price * quantity
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end
    
end
