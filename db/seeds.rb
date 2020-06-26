# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroy all reports"
Report.destroy_all

puts "Destroy all users"
User.destroy_all

puts "Create an user Coco"
coco = User.create!(first_name: "Coco", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "coco@gmail.com", password: "azerty")

puts "Destroy all establishments"
Establishment.destroy_all

puts "Create restaurants"
Establishment.create!(name: "Loco By Jem's", address: "293 rue d'Ornano Bordeaux", phone_number: "05 56 55 99 37", description: "Cuisine française moderne", category: :restaurant, access_average: 5, service_average: 5)
# file1 = URI.open()
exploit = Establishment.create!(name: "L'Exploit", address: "29 quai des Chartrons Bordeaux", phone_number: "05 57 59 92 82", description: "Sur les quais", category: :restaurant, access_average: 3, service_average: 4)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_1_yiugne.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_2_cwyhkd.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_3_xgqw1x.jpg")
var1 = {io: file1, filename: "exploit1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "exploit2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "exploit3.jpg", content_type: "image/jpg"}
exploit.photos.attach([var1, var2, var3])


Establishment.create!(name: "Phénix d'Or", address: "17 rue des Frères Bonie Bordeaux", phone_number: "05 56 44 91 05", description: "Très bonne cuisine Vietnamienne.", category: :restaurant, access_average: 4, service_average: 5)
Establishment.create!(name: "Chez Peppone", address: "Cours Georges Clémenceau Bordeaux", phone_number: "05 56 44 91 05", description: "Toute l'Italie dans votre assiette.", category: :restaurant, access_average: 2, service_average: 4)
Establishment.create!(name: "Crêperie Gourmands", address: "172 rue Sainte Catherine Bordeaux", phone_number: "06 87 75 61 60", description: "Comme un goût de Bretagne mais le soleil en plus.", category: :restaurant, access_average: 3, service_average: 3)
Establishment.create!(name: "Terrasse de la Croix Blanche", address: "62 rue de la Croix Blanche Bordeaux", phone_number: "06 61 60 05 61", description: "Lorem ipsum", category: :restaurant, access_average: 5, service_average: 4)
Establishment.create!(name: "L'Avenue Carnot", address: "2 avenue Carnot Bordeaux", phone_number: "05 56 02 20 27", description: "Lorem ipsum", category: :restaurant, access_average: 4, service_average: 3)
Establishment.create!(name: "Cantina Lino", address: "81 cours Marc Nouaux Bordeaux", phone_number: "05 56 01 03 48", description: "Lorem ipsum", category: :restaurant, access_average: 5, service_average: 3)
Establishment.create!(name: "Mets Mots", address: "98 rue Fondaudège Bordeaux", phone_number: "05 57 83 38 24", description: "Lorem ipsum", category: :restaurant, access_average: 3, service_average: 4)
Establishment.create!(name: "Julien Cruège", address: "245 rue Turenne Bordeaux", phone_number: "05 56 81 97 86", description: "Lorem ipsum", category: :restaurant, access_average: 3, service_average: 3)
Establishment.create!(name: "Casa Ferreti", address: "230 avenue du Maréchal de Lattre de Tassigny Bordeaux", phone_number: "05 35 54 45 54", description: "Lorem ipsum", category: :restaurant, access_average: 4, service_average: 4)
Establishment.create!(name: "Au Bonheur du Palais", address: "74 rue Paul Louis Lande Bordeaux", phone_number: "05 56 94 38 63", description: "Lorem ipsum", category: :restaurant, access_average: 3, service_average: 5)
Establishment.create!(name: "Cantine Gourmande", address: "2 bis rue Flornoy Bordeaux", phone_number: "09 81 84 69 12", description: "Lorem ipsum", category: :restaurant, access_average: 4, service_average: 4)
Establishment.create!(name: "Le Bistro du Sommelier", address: "163 rue Georges Bonnac Bordeaux", phone_number: "05 56 96 71 78", description: "Lorem ipsum", category: :restaurant, access_average: 4, service_average: 4)
Establishment.create!(name: "Café Bastide", address: "69 allée Serr Bordeaux", phone_number: "05 56 86 83 31", description: "Lorem ipsum", category: :restaurant, access_average: 4, service_average: 2)

puts "Create bars"
Establishment.create!(name: "Jaquen Craft Beer", address: "5 rue Beaubadat Bordeaux", phone_number: "06 48 14 00 38", description: "Sur les quais", category: :bar, access_average: 3, service_average: 4)
Establishment.create!(name: "King Kong Bar", address: "72 quai des Chartrons Bordeaux", phone_number: "05 56 79 25 89", description: "Sur les quais", category: :bar, access_average: 2, service_average: 3)
Establishment.create!(name: "Coco Loko", address: "3 rue Duffour Dubergier Bordeaux", phone_number: "06 98 81 58 52", description: "Pour s'amuser et danser.", category: :bar, access_average: 4, service_average: 3)
Establishment.create!(name: "La Guinguette Chez Alriq", address: "Rue Hortense Bordeaux", phone_number: "05 56 86 58 49", description: "Pour s'amuser et danser.", category: :bar, access_average: 5, service_average: 5)
Establishment.create!(name: "The Central Pub", address: "Rue Reignier Bordeaux", phone_number: "05 57 80 38 00", description: "Lorem ipsum", category: :bar, access_average: 4, service_average: 4)
Establishment.create!(name: "Malika Kafe", address: "Quai de Bacalan Bordeaux", phone_number: "05 57 87 33 21", description: "Lorem ipsum", category: :bar, access_average: 3, service_average: 2)
Establishment.create!(name: "Mashup", address: "23 rue des Piliers de Tutelle Bordeaux", phone_number: "05 56 87 67 95", description: "Lorem ipsum", category: :bar, access_average: 2, service_average: 3)

puts "Create theaters"
Establishment.create!(name: "Comédie Gallien", address: "20 rue Rolland Bordeaux", phone_number: "05 56 44 04 44", description: "Lorem ipsum", category: :theatre, access_average: 2, service_average: 3)
Establishment.create!(name: "Café Théâtre des Chartrons", address: "170 cours du Médoc Bordeaux", phone_number: "05 56 37 63 44", description: "Lorem ipsum", category: :theatre, access_average: 3, service_average: 3)
Establishment.create!(name: "Opéra National de Bordeaux", address: "Place de la Comédie Bordeaux", phone_number: "05 56 00 85 95", description: "Lorem ipsum", category: :theatre, access_average: 4, service_average: 4)

puts "Create cinema"
Establishment.create!(name: "Megarama", address: "7 allée Serr Bordeaux", phone_number: "05 56 40 66 70", description: "Très grand cinema", category: :cinema, access_average: 5, service_average: 4)
Establishment.create!(name: "Utopia", address: "5 place Camille Jullian Bordeaux", phone_number: "05 56 52 00 03", description: "Cinéma attypique et authentique.", category: :cinema, access_average: 3, service_average: 3)
Establishment.create!(name: "CGR Le Français", address: "9 rue Montesquieu Bordeaux", phone_number: "0 892 688 588", description: "Un des plus beau cinéma de Bordeaux.", category: :cinema, access_average: 4, service_average: 5)

puts "Create reports"
Report.create!(title: "Accessibilité trotoirs Caudéran", content: "Travaux de rénovation nécessaires pour que les usagers puissent de nouveau emprunter le trotoir en toute sécurité.", location: "Caudéran", progress: "", user: coco)
Report.create!(title: "Accessibilité trotoirs Chartrons", content: "Travaux de rénovation nécessaires pour que les usagers puissent de nouveau emprunter le trotoir en toute sécurité.", location: "Caudéran", progress: "", user: coco)
Report.create!(title: "Accessibilité trotoirs Gambetta", content: "Travaux de rénovation nécessaires pour que les usagers puissent de nouveau emprunter le trotoir en toute sécurité.", location: "Caudéran", progress: "", user: coco)

puts "Finish!"
