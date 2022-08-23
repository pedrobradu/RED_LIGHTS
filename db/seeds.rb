# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.destroy_all
User.destroy_all

User.create(email: "teste@teste.com", password: "123456")

puts 'Creating 4 fake ruber penises...'

product1 = Product.create!(user: User.first, name: "penis grande de borracha 1" , price: 69.69 , category: "dildo" , description: "é um pênis bem grande com várias opções de cores" )
puts product1
product2 = Product.create!(user: User.first, name: "penis grande de borracha 2" , price: 69.69 , category: "dildo" , description: "é um pênis bem grande com várias opções de cores" )
puts product2
product3 = Product.create!(user: User.first, name: "penis grande de borracha 3" , price: 69.69 , category: "dildo" , description: "é um pênis bem grande com várias opções de cores" )
puts product3
product4 = Product.create!(user: User.first, name: "penis grande de borracha 4" , price: 69.69 , category: "dildo" , description: "é um pênis bem grande com várias opções de cores" )
puts product4

puts 'Finished!'
