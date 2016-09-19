class Category < ApplicationRecord
  has_many :accent_categories
  has_many :accents, through: :accent_categories
end
