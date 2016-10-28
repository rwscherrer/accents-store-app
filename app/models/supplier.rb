class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  
  has_many :accents
end

