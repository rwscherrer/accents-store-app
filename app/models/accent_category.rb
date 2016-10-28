class AccentCategory < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  belongs_to :accent
  belongs_to :category
end
