class Product < ApplicationRecord
  # Each product belongs to a category
  belongs_to :category

  # Add validations to ensure product attributes are present and valid
  validates :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
