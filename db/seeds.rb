# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all users"
User.destroy_all

puts "Create an user Coco"
User.create!(first_name: "Coco", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "coco@gmail.com", password: "azerty")

puts "Destroy all establishments"
Establishment.destroy_all

puts "Create restaurants"
Establishment.create!(name: "Loco By Jem's", address: "293 rue d'Ornano Bordeaux", description: "Cuisine française moderne", category: "Restaurant", access_average: 5, service_average:5)

puts "Create bars"
Establishment.create!(name: "L'exploit", address: "29 quai des Chartrons Bordeaux", description: "Sur les quais", category: "Bar", access_average: 3, service_average: 4)

puts "Create theaters"
Establishment.create!(name: "Comédie Gallien", address: "20 rue Rolland Bordeaux", description: "Lorem ipsum", category: "Theatre", access_average: 2, service_average: 3)

puts "Create cinema"
Establishment.create!(name: "Megarama", address: "allée de serr Bordeaux", description: "Tres grand cinema", category: "Cinema", access_average: 1, service_average: 5)

puts "Finish!"
