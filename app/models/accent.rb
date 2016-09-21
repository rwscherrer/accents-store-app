class Accent < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :accent_categories
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products
  has_many :categories, through: :accent_categories

  def discounted?
    price.to_f < 10000
  end
 
  def tax
    price.to_f * 0.09 
  end

  def total
    price.to_f + tax.to_f
  end

  def top_image
    first_image = images.first
    if first_image
      images.first.url
    else
      "https://www.seopler.com/images/broken_links.jpg"
    end
  end


end
