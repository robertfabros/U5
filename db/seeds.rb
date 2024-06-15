# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'faker'

# Clear existing products (optional but useful for repeated seeding)
Product.delete_all

# Generate 676 products
676.times do
  Product.create!(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    price: Faker::Commerce.price(range: 0.5..100.0), # prices between $0.50 and $100
    stock_quantity: Faker::Number.between(from: 1, to: 100) # stock between 1 and 100
  )
end

puts "Created 676 products!"
