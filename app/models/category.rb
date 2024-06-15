class Category < ApplicationRecord
  # A category can have many products
  has_many :products

  # Add validation to ensure the category name is present
  validates :name, presence: true
end
