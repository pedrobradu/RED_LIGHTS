# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Order.destroy_all
# Product.destroy_all
User.destroy_all

user = User.create!(email: "teste@teste.com", password: "123456")

# puts 'Creating 4 fake ruber penises...'

# product1 = Product.create!(user: User.first, name: "Vibrador Rotativo", price: 69.69, category: Product::CATEGORY.sample, description: "Com 36 níveis de vibração e 8 rotações")
# puts product1
# product2 = Product.create!(user: User.first, name: "Baralho Kama Sutra", price: 38.00, category: Product::CATEGORY.sample, description: "Perfeito para você que deseja descobrir novas posições e formas de prazer com seu amado (a) para fugir da rotina")
# puts product2
# product3 = Product.create!(user: User.first, name: "Fantasia Daenerys Targaryen", price: 179.69, category: Product::CATEGORY.sample, description: "Fantasia feminina para laçar o seu dragãozinho!")
# puts product3
# product4 = Product.create!(user: User.first, name: "Kit Algemas", price: 109.60, category: Product::CATEGORY.sample, description: "Descubra novas sensações e possibilidades de mobilidade")
# puts product4

# puts 'Finished!'
require "open-uri"

puts 'Creating...'
file = URI.open("https://i.pinimg.com/564x/d1/d7/3e/d1d73e69b6f6e93c80bc621545cbe928.jpg")
product = Product.new(user: user, name: "Vibrador Rotativo", price: 69.69, category: Product::CATEGORY.sample, description: "Com 36 níveis de vibração e 8 rotações")
product.photos.attach(io: file, filename: "banana.jpg", content_type: "image/png")
product.save!

file = URI.open("https://i.pinimg.com/564x/2a/a7/32/2aa732f47877f2c24fef750c6689e5db.jpg")
product = Product.new(user: user, name: "Lubrificante", price: 19.69, category: Product::CATEGORY.sample, description: "Muito bom")
product.photos.attach(io: file, filename: "milho.jpg", content_type: "image/png")
product.save!

puts 'Created!'

# file = URI.open('https://i.pinimg.com/564x/d1/d7/3e/d1d73e69b6f6e93c80bc621545cbe928.jpg')
# product = Product.new(user_id: 12, name: "Vibrador Rotativo", price: 69.69, category: Product::CATEGORY.sample, description: "Com 36 níveis de vibração e 8 rotações")
# product.photos.attach(io: file, filename: 'banana.jpg', content_type: 'image/jpg')
# product.save!

# file = URI.open('https://i.pinimg.com/564x/d1/d7/3e/d1d73e69b6f6e93c80bc621545cbe928.jpg')
# product = Product.new(user_id: 12, name: "Vibrador Rotativo", price: 69.69, category: Product::CATEGORY.sample, description: "Com 36 níveis de vibração e 8 rotações")
# product.photos.attach(io: file, filename: 'banana.jpg', content_type: 'image/jpg')
# product.save!
