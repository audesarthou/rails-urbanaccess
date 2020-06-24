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
Establishment.create!(name: "Loco By Jem's", address: "293 rue d'Ornano Bordeaux", phone_number: "05 56 55 99 37", description: "Cuisine française moderne", category: "Restaurant", access_average: 5, service_average: 5)
Establishment.create!(name: "L'Exploit", address: "29 quai des Chartrons Bordeaux", phone_number: "05 57 59 92 82", description: "Sur les quais", category: "Restaurant", access_average: 3, service_average: 4)
Establishment.create!(name: "Phénix d'Or", address: "17 rue des Frères Bonie Bordeaux", phone_number: "05 56 44 91 05", description: "Très bonne cuisine Vietnamienne.", category: "Restaurant", access_average: 4, service_average: 5)
Establishment.create!(name: "Chez Peppone", address: "Cours Georges Clémenceau Bordeaux", phone_number: "05 56 44 91 05", description: "Toute l'Italie dans votre assiette.", category: "Restaurant", access_average: 2, service_average: 4)
Establishment.create!(name: "Crêperie Gourmands", address: "172 rue Sainte Catherine Bordeaux", phone_number: "06 87 75 61 60", description: "Comme un goût de Bretagne mais le soleil en plus.", category: "Restaurant", access_average: 3, service_average: 3)

puts "Create bars"
Establishment.create!(name: "Jaquen Craft Beer", address: "5 rue Beaubadat Bordeaux", phone_number: "06 48 14 00 38", description: "Sur les quais", category: "Bar", access_average: 3, service_average: 4)
Establishment.create!(name: "King Kong Bar", address: "72 quai des Chartrons Bordeaux", phone_number: "05 56 79 25 89", description: "Sur les quais", category: "Bar", access_average: 2, service_average: 3)
Establishment.create!(name: "Coco Loko", address: "3 rue Duffour Dubergier Bordeaux", phone_number: "06 98 81 58 52", description: "Pour s'amuser et danser.", category: "Bar", access_average: 4, service_average: 3)

puts "Create theaters"
Establishment.create!(name: "Comédie Gallien", address: "20 rue Rolland Bordeaux", phone_number: "05 56 44 04 44", description: "Lorem ipsum", category: "Theatre", access_average: 2, service_average: 3)
Establishment.create!(name: "Café Théâtre des Chartrons", address: "170 cours du Médoc Bordeaux", phone_number: "05 56 37 63 44", description: "Lorem ipsum", category: "Theatre", access_average: 3, service_average: 3)
Establishment.create!(name: "Opéra National de Bordeaux", address: "Place de la Comédie Bordeaux", phone_number: "05 56 00 85 95", description: "Lorem ipsum", category: "Theatre", access_average: 4, service_average: 4)

puts "Create cinema"
Establishment.create!(name: "Megarama", address: "allée de serr Bordeaux", phone_number: "05 56 40 66 70", description: "Très grand cinema", category: "Cinema", access_average: 5, service_average: 4)
Establishment.create!(name: "Utopia", address: "5 place Camille Jullian Bordeaux", phone_number: "05 56 52 00 03", description: "Cinéma attypique et authentique.", category: "Cinema", access_average: 3, service_average: 3)
Establishment.create!(name: "CGR Le Français", address: "9 rue Montesquieu Bordeaux", phone_number: "0 892 688 588", description: "Un des plus beau cinéma de Bordeaux.", category: "Cinema", access_average: 4, service_average: 5)

puts "Finish!"
