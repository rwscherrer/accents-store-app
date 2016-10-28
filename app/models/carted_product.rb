class CartedProduct < ApplicationRecord
  validates :quantity, presence: true
  validates :quantity, numericality: {greater_than: 0}


  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :accent

  def subtotal
    quantity * accent.price
  end
end
