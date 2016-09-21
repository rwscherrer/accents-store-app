class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :user
  belongs_to :accent

  def subtotal
    quantity * accent.price
  end
end
