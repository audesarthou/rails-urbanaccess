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
loco = Establishment.new(name: "Loco By Jem's", address: "293 rue d'Ornano Bordeaux", phone_number: "05 56 55 99 37", description: "Cuisine française moderne", category: :restaurant, access_average: 5, service_average: 5)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_1_gaaxqj.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_2_e6mq1z.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_3_rxk1cv.jpg")
var1 = {io: file1, filename: "loco1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "loco2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "loco3.jpg", content_type: "image/jpg"}
loco.photos.attach([var1, var2, var3])
loco.save!

exploit = Establishment.new(name: "L'Exploit", address: "29 quai des Chartrons Bordeaux", phone_number: "05 57 59 92 82", description: "Sur les quais", category: :restaurant, access_average: 3, service_average: 4)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_1_yiugne.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_2_cwyhkd.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_3_xgqw1x.jpg")
var1 = {io: file1, filename: "exploit1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "exploit2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "exploit3.jpg", content_type: "image/jpg"}
exploit.photos.attach([var1, var2, var3])
exploit.save!

phenix = Establishment.new(name: "Phénix d'Or", address: "17 rue des Frères Bonie Bordeaux", phone_number: "05 56 44 91 05", description: "Très bonne cuisine Vietnamienne.", category: :restaurant, access_average: 4, service_average: 5)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_1_kacelb.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_2_vewbqr.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_3_fzj3te.jpg")
var1 = {io: file1, filename: "phenix1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "phenix2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "phenix3.jpg", content_type: "image/jpg"}
phenix.photos.attach([var1, var2, var3])
phenix.save!


peppone = Establishment.new(name: "Chez Peppone", address: "Cours Georges Clémenceau Bordeaux", phone_number: "05 56 44 91 05", description: "Toute l'Italie dans votre assiette.", category: :restaurant, access_average: 2, service_average: 4)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172464/Urban_access/restaurants/chez_peppone/chez_peppone_1_ad4jwe.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/chez_peppone/chez_peppone_2_anfsmr.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/chez_peppone/chez_peppone_3_eqnvex.jpg")
var1 = {io: file1, filename: "peppone1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "peppone2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "peppone3.jpg", content_type: "image/jpg"}
peppone.photos.attach([var1, var2, var3])
peppone.save!


creperie = Establishment.new(name: "Crêperie Gourmands", address: "172 rue Sainte Catherine Bordeaux", phone_number: "06 87 75 61 60", description: "Comme un goût de Bretagne mais le soleil en plus.", category: :restaurant, access_average: 3, service_average: 3)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_1_jbl6wz.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_2_egflo5.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_3_jyiyfe.jpg")
var1 = {io: file1, filename: "creperie1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "creperie2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "creperie3.jpg", content_type: "image/jpg"}
creperie.photos.attach([var1, var2, var3])
creperie.save!


# croix = Establishment.new(name: "Terrasse de la Croix Blanche", address: "62 rue de la Croix Blanche Bordeaux", phone_number: "06 61 60 05 61", description: "Lorem ipsum", category: :restaurant, access_average: 5, service_average: 4)
# file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174711/Urban_access/restaurants/Terrasse_de_la_Croix_Blanche/Terrasse_de_la_Croix_Blanche_1_ithmwn.jpg")
# file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174712/Urban_access/restaurants/Terrasse_de_la_Croix_Blanche/Terrasse_de_la_Croix_Blanche_2_mipisk.jpg")
# file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174712/Urban_access/restaurants/Terrasse_de_la_Croix_Blanche/Terrasse_de_la_Croix_Blanche_3_wohlg4.jpg")
# var1 = {io: file1, filename: "croix1.jpg", content_type: "image/jpg"}
# var2 = {io: file2, filename: "croix2.jpg", content_type: "image/jpg"}
# var3 = {io: file3, filename: "croix3.jpg", content_type: "image/jpg"}
# croix.photos.attach([var1, var2, var3])
# croix.save!


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
