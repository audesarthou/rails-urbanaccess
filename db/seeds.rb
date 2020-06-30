# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "Destroy all reviews"
Review.destroy_all

puts "Destroy all reports"
Report.destroy_all

puts "Destroy all users"
User.destroy_all

puts "Create an user Coco, Riri, Fifi and Loulou ;)"
coco = User.create!(first_name: "Coco", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "coco@gmail.com", password: "azerty")
riri = User.create!(first_name: "Riri", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "riri@gmail.com", password: "azerty")
fifi = User.create!(first_name: "Fifi", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "fifi@gmail.com", password: "azerty")
loulou = User.create!(first_name: "Loulou", last_name: "DuWagon", address: "107 cours balguerie stuttenberg bordeaux", email: "loulou@gmail.com", password: "azerty")

puts "Destroy all establishments"
Establishment.destroy_all

puts "Destroy all districts"
District.destroy_all

puts "Create districts"
maritime = District.create!(name: "Bordeaux Maritime")
cauderan = District.create!(name: "Caudéran")
bdx_sud = District.create!(name: "Bordeaux Sud")
nansouty = District.create!(name: "Nansouty - Saint Genès")
chartrons = District.create!(name: "Chartrons - Grand Parc - Jardin Public")
centre_ville = District.create!(name: "Centre ville")
bastide = District.create!(name: "Bastide")
st_augustin = District.create!(name: "Saint Augustin - Tauzin - Alphonse Dupeux")


puts "Create restaurants"
loco = Establishment.new(name: "Loco By Jem's", address: "293 rue d'Ornano Bordeaux", phone_number: "05 56 55 99 37", description: "Cuisine bistro le midi et gastronomique le soir exclusivement faites avec des produits frais et de saisons.", category: :restaurant, district: st_augustin)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_1_gaaxqj.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_2_e6mq1z.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/loco_by_jems/loco_by_jems_3_rxk1cv.jpg")
var1 = {io: file1, filename: "loco1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "loco2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "loco3.jpg", content_type: "image/jpg"}
loco.photos.attach([var1, var2, var3])
loco.save!
Review.create!(content: "Très bon dîner avec des plats aux saveurs très fines. Personnel au top. J’aurai aimé que le chef passe aux tables saluer.", access_rating: 4, service_rating: 5, user: coco, establishment: loco)
Review.create!(content: "Très bonne cuisine, Service au top et à l écoute Très belle carte des vins On reviendra avec plaisir.", access_rating: 4, service_rating: 4, user: riri, establishment: loco)
Review.create!(content: "Felicitation au chef et à son équipe! Tjs aussi délicieux.. Saveurs parfaitement dosées, de quoi réveiller nos papilles.", access_rating: 5, service_rating: 5, user: loulou, establishment: loco)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: fifi, establishment: loco)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: loco)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: loco)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: loco)


exploit = Establishment.new(name: "L'Exploit", address: "29 quai des Chartrons Bordeaux", phone_number: "05 57 59 92 82", description: "Un bistrot comme il en reste peut ! Les patrons adorables et cuisine délicieuse.", category: :restaurant, district: chartrons)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_1_yiugne.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_2_cwyhkd.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/lexploit/lexploit_3_xgqw1x.jpg")
var1 = {io: file1, filename: "exploit1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "exploit2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "exploit3.jpg", content_type: "image/jpg"}
exploit.photos.attach([var1, var2, var3])
exploit.save!
Review.create!(content: "Une belle découverte gastronomique et humaine. Les patrons sont des passionnés qui prennent le temps d’expliquer, comme si c’était une prestation supplémentaire au service, le détail de chaque plat proposé sur les ardoises.", access_rating: 5, service_rating: 4, user: riri, establishment: exploit)
Review.create!(content: "Venu dîner un soir, cette semaine. Accueil sympa, cadre tout aussi sympa. Les plats s'affichent sur 2 ardoises et le choix est assez vaste.", access_rating: 3, service_rating: 4, user: coco, establishment: exploit)
Review.create!(content: "Un rendez-vous que nous ne manquons jamais en famille ou entre amis dans ce resto bistronomique. Des hôtes passionnés et généreux qui montrent leurs qualités dans leurs assiettes.", access_rating: 5, service_rating: 4, user: fifi, establishment: exploit)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: riri, establishment: exploit)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: coco, establishment: exploit)

phenix = Establishment.new(name: "Phénix d'Or", address: "17 rue des Frères Bonie Bordeaux", phone_number: "05 56 44 91 05", description: "Une cuisine vietnamienne de très bonne qualité, avec une jolie terrasse.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_1_kacelb.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_2_vewbqr.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172466/Urban_access/restaurants/le_phenix_dor/le_phenix_dor_3_fzj3te.jpg")
var1 = {io: file1, filename: "phenix1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "phenix2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "phenix3.jpg", content_type: "image/jpg"}
phenix.photos.attach([var1, var2, var3])
phenix.save!
Review.create!(content: "Nous avons découvert ce restaurant grâce à une box et nous avons été plus que ravis. Le personnel est très agréable et aux petits soins avec toujours une petite attention.", access_rating: 4, service_rating: 4, user: fifi, establishment: phenix)
Review.create!(content: "Un sans faute avec très bon accueil, service rapide et très bon ! Placé en plein centre avec un menu très abordable !", access_rating: 5, service_rating: 4, user: coco, establishment: phenix)

peppone = Establishment.new(name: "Chez Peppone", address: "Cours Georges Clémenceau Bordeaux", phone_number: "05 56 44 91 05", description: "Excellents produits gentiment servis. Cochon, vins, fromages et glaces d'un bon rapport qualité prix.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172464/Urban_access/restaurants/chez_peppone/chez_peppone_1_ad4jwe.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/chez_peppone/chez_peppone_2_anfsmr.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593172465/Urban_access/restaurants/chez_peppone/chez_peppone_3_eqnvex.jpg")
var1 = {io: file1, filename: "peppone1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "peppone2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "peppone3.jpg", content_type: "image/jpg"}
peppone.photos.attach([var1, var2, var3])
peppone.save!
Review.create!(content: "Pour la deuxième fois c'était excellent, pizza aux cèpes et Cete ainsi que dessert gangbang et café liégeois (comme nul part ailleurs). Le prix des pizzas est correct.", access_rating: 3, service_rating: 3, user: coco, establishment: peppone)
Review.create!(content: "J'adore toujours autant ce resto ! L'ambiance a la fois très traditionnelle Italie profonde et moderne avec un ton décalé (voire tous les tableaux aux murs).", access_rating: 4, service_rating: 3, user: riri, establishment: peppone)
Review.create!(content: "Quelle déception, ça fait très longtemps que je viens mais là c’était la dernière fois. La cuisine n’a plus aucun goût et c’est de plus en plus cher.", access_rating: 3, service_rating: 2, user: fifi, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 4, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 2, service_rating: 4, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 2, service_rating: 4, user: coco, establishment: peppone)
Review.create!(content: "", access_rating: 2, service_rating: 4, user: coco, establishment: peppone)
Review.create!(content: "", access_rating: 2, service_rating: 4, user: coco, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 4, user: riri, establishment: peppone)
Review.create!(content: "", access_rating: 3, service_rating: 4, user: riri, establishment: peppone)

creperie = Establishment.new(name: "Crêperie Gourmands", address: "172 rue Sainte Catherine Bordeaux", phone_number: "06 87 75 61 60", description: "Un voyage gustatif qui vous transporte dans les spécialités brestoise, dégustez un sucré ou salé tout est fait pour se régaler.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_1_jbl6wz.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_2_egflo5.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593180301/Urban_access/restaurants/creperie_gourmands/creperie_gourmands_3_jyiyfe.jpg")
var1 = {io: file1, filename: "creperie1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "creperie2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "creperie3.jpg", content_type: "image/jpg"}
creperie.photos.attach([var1, var2, var3])
creperie.save!
Review.create!(content: "Accueil chaleureux et remarquable service exemplaire le kir bordelais succulent et les crêpes un délice je vous suggère d'aller faire un petit tour rapport qualité/prix", access_rating: 4, service_rating: 3, user: fifi, establishment: creperie)
Review.create!(content: "Des crêpes comme dans nos rêves, délicieuses avec un accueil chaleureux qui nous a fait bien plaisir, je recommande !", access_rating: 5, service_rating: 4, user: riri, establishment: creperie)
Review.create!(content: "Un accueil des plus chaleureux Des crêpes généreuses et gourmandes Nous nous sommes régalés !!! Merci pour ce moment de douceur.", access_rating: 4, service_rating: 4, user: loulou, establishment: creperie)
Review.create!(content: "", access_rating: 4, service_rating: 5, user: coco, establishment: creperie)
Review.create!(content: "", access_rating: 4, service_rating: 5, user: coco, establishment: creperie)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: creperie)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: creperie)
Review.create!(content: "", access_rating: 3, service_rating: 5, user: coco, establishment: creperie)
Review.create!(content: "", access_rating: 4, service_rating: 5, user: coco, establishment: creperie)

blanche = Establishment.new(name: "Terrasse de la Croix Blanche", address: "62 rue de la Croix Blanche Bordeaux", phone_number: "06 61 60 05 61", description: "Passez une soirée sur le thème de la cuisine française, diversifiée ou traditionnelle et découvrez ses diverses facettes.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593211776/Urban_access/restaurants/croix_blanche/Croix_Blanche_1_raalty.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593211776/Urban_access/restaurants/croix_blanche/Croix_Blanche_2_czmp8n.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593211776/Urban_access/restaurants/croix_blanche/Croix_Blanche_1_raalty.jpg")
var1 = {io: file1, filename: "blanche1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "blanche2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "blanche3.jpg", content_type: "image/jpg"}
blanche.photos.attach([var1, var2, var3])
blanche.save!
Review.create!(content: "Nous sommes revenus, après le confinement dans ce restaurant, très proche de notre maison. Bon accueil de la patronne( ou de la serveuse). Plats simples, avec une petite touche personnelle du chef.", access_rating: 4, service_rating: 4, user: coco, establishment: blanche)
Review.create!(content: "Restaurant de très bonne qualité avec de plat impeccable le personnel et au top je le recommande a tout le monde car ils ne seront pas déçu.", access_rating: 5, service_rating: 5, user: loulou, establishment: blanche)
Review.create!(content: "Bon. Très bon. Les vins proposés au verre s'associent harmonieusement aux plats qui sont autant de découverte. Terrasse agréable qui mériterait quelques aménagements.", access_rating: 4, service_rating: 4, user: riri, establishment: blanche)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: blanche)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: blanche)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: blanche)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: blanche)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: blanche)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: blanche)

carnot = Establishment.new(name: "L'Avenue Carnot", address: "2 avenue Carnot Bordeaux", phone_number: "05 56 02 20 27", description: "En poussant le portail de l’Avenue Carnot, la première impression est d’entrer dans une maison paisible et chaleureuse.", category: :restaurant, district: cauderan)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174710/Urban_access/restaurants/L_Avenue_Carnot/L_Avenue_Carnot_1_sdj4jf.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174710/Urban_access/restaurants/L_Avenue_Carnot/L_Avenue_Carnot_2_eghewl.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174710/Urban_access/restaurants/L_Avenue_Carnot/L_Avenue_Carnot_3_c5yptv.jpg")
var1 = {io: file1, filename: "carnot1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "carnot2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "carnot3.jpg", content_type: "image/jpg"}
carnot.photos.attach([var1, var2, var3])
carnot.save!
Review.create!(content: "Nous y avons mangé entre amis. C’était très bon, très chic, plutôt gastronomique. La carte n’est pas immense, mais les plats sont totalement maîtrisés.", access_rating: 4, service_rating: 5, user: riri, establishment: carnot)
Review.create!(content: "Dîner amoureux , repas formidable , petite formule à 23 euros rapport qualité prix extra fraîcheur , présentation et service super.", access_rating: 3, service_rating: 4, user: loulou, establishment: carnot)
Review.create!(content: "Nous avons commandé un menu à L’Avenue Carnot qui, après un mois de confinement a réouvert en proposant la vente à emporter : de l’entrée au dessert tout était excellent !", access_rating: 3, service_rating: 4, user: coco, establishment: carnot)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: carnot)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: carnot)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: carnot)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: fifi, establishment: carnot)

mots = Establishment.new(name: "Mets Mots", address: "98 rue Fondaudège Bordeaux", phone_number: "05 57 83 38 24", description: "Depuis sa cuisine ouverte Léo Forget et son équipe livrent leurs idées du moment qui font la part belle aux produits frais de saisons.", category: :restaurant, district: chartrons)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174711/Urban_access/restaurants/Mets_Mots/Mets_Mots_1_edubgq.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174711/Urban_access/restaurants/Mets_Mots/Mets_Mots_2_d10n9f.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593174711/Urban_access/restaurants/Mets_Mots/Mets_Mots_3_ft9htt.jpg")
var1 = {io: file1, filename: "mots1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "mots2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "mots3.jpg", content_type: "image/jpg"}
mots.photos.attach([var1, var2, var3])
mots.save!
Review.create!(content: "Accueil et service chaleureux, une cuisine d'excellence, raffinée, qui mèle les textures et les saveurs avec brio..c'est un sans fautes. Merci pour ce formidable moment.", access_rating: 5, service_rating: 4, user: fifi, establishment: mots)
Review.create!(content: "Equipe accueillante, atmosphère détendue et carte alléchante. Un vrai moment de plaisir à chaque fois. Une carte réduite mais des plats tout aussi attrayants les uns que les autres.", access_rating: 4, service_rating: 3, user: loulou, establishment: mots)
Review.create!(content: "Très bon restaurant. Je recommande si vous êtes dans le coin. Rapport qualité,prix, rien a redire. Service rapide.", access_rating: 4, service_rating: 4, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: mots)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: mots)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: mots)

cruege = Establishment.new(name: "Julien Cruège", address: "245 rue Turenne Bordeaux", phone_number: "05 56 81 97 86", description: "Décor contemporain, chic et spacieux, ce restaurant, offre un cadre idéal pour se régaler d'une cuisine créative et savoureuse.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175740/Urban_access/restaurants/Julien_Cruege/Julien_Cruege_1_beri5o.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175741/Urban_access/restaurants/Julien_Cruege/Julien_Cruege_2_pwyjhr.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175741/Urban_access/restaurants/Julien_Cruege/Julien_Cruege_3_vxfuwp.jpg")
var1 = {io: file1, filename: "cruege1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "cruege2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "cruege3.jpg", content_type: "image/jpg"}
cruege.photos.attach([var1, var2, var3])
cruege.save!
Review.create!(content: "Nous avons pris le menu avec plusieurs services pour une découverte totale. Nous avons découvert beaucoup de saveurs agréables et parfois suprenantes. Petit cadre cosy et personnel sympathique.", access_rating: 5, service_rating: 4, user: riri, establishment: cruege)
Review.create!(content: "Très bonne expérience dans ce restaurant. La cuisine nous a convaincue du début à la fin: bon choix de produits, superbes associations de saveurs, cuisson au top et bel assortiment de fromage pour terminer.", access_rating: 5, service_rating: 4, user: loulou, establishment: cruege)
Review.create!(content: "Accès facile, parking moins simple. mais une fois atteint le restaurant c'est l'antichambre du paradis. une très belle terrasse, un intérieur chaleureux et très moderne. Cuisine créative et gouteuse, une carte des vins juste magnifique", access_rating: 5, service_rating: 4, user: fifi, establishment: cruege)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cruege)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: fifi, establishment: cruege)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: fifi, establishment: cruege)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: fifi, establishment: cruege)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: fifi, establishment: cruege)

ferreti = Establishment.new(name: "Casa Ferreti", address: "230 avenue du Maréchal de Lattre de Tassigny Bordeaux", phone_number: "05 35 54 45 54", description: "Pizzas, pâtes, antipasti, ravioles, desserts...Retrouvez les vraies saveurs de l’Italie dans votre assiette.", category: :restaurant, district: cauderan)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175740/Urban_access/restaurants/Casa_Ferreti/Casa_Ferreti_1_qx7ea7.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175741/Urban_access/restaurants/Casa_Ferreti/Casa_Ferreti_2_xcf3jy.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175740/Urban_access/restaurants/Casa_Ferreti/Casa_Ferreti_3_sbliud.jpg")
var1 = {io: file1, filename: "ferreti1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "ferreti2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "ferreti3.jpg", content_type: "image/jpg"}
ferreti.photos.attach([var1, var2, var3])
ferreti.save!
Review.create!(content: "Découvert par la fourchette L'italie a bordeaux sans le corona ;-) Regardez mes photo comme dab rien ne vaut des photos Serveur et serveuse au top attentifs.", access_rating: 4, service_rating: 3, user: fifi, establishment: ferreti)
Review.create!(content: "Très bon accueil, personnel très agréable et repas très bon. Carte variée. Je recommande bien évidemment.", access_rating: 4, service_rating: 4, user: loulou, establishment: ferreti)
Review.create!(content: "Restaurant conviviale avec de bonnes choses à la carte un bon choix de vin ! Acceuil super personnel aimable rien a dire Je recommande !.", access_rating: 4, service_rating: 3, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: ferreti)

palais = Establishment.new(name: "Au Bonheur du Palais", address: "74 rue Paul Louis Lande Bordeaux", phone_number: "05 56 94 38 63", description: "Toujours exemplaire et initiatique la cuisine des frères Shan dans ce coin paisible du centre ville.", category: :restaurant, district: bdx_sud)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Au_Bonheur_du_Palais/Au_Bonheur_du_Palais_1_fsmjys.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Au_Bonheur_du_Palais/Au_Bonheur_du_Palais_2_gdty9h.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Au_Bonheur_du_Palais/Au_Bonheur_du_Palais_3_utdvbj.jpg")
var1 = {io: file1, filename: "palais1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "palais2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "palais3.jpg", content_type: "image/jpg"}
palais.photos.attach([var1, var2, var3])
palais.save!
Review.create!(content: "Jolie découverte... Y aller au moins une fois pour déguster de véritables saveurs chinoises... Le patron est juste adorable et partagé de vraies valeurs...J'ai enfin trouvé notre Chinois !", access_rating: 3, service_rating: 5, user: coco, establishment: palais)
Review.create!(content: "Une cuisine chinoise hors des sentiers battus, savoureuse et inventive. Service, cadre, patron attentionné qui saura vous guider dans le choix des plats. C’est copieux et délicieux... un moment d’évasion !", access_rating: 3, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "N'hésitez pas à pousser la porte de ce restaurant dont la devanture ne paie pas de mine, laissez-vos guider par le chef, passionné et passionnant.", access_rating: 3, service_rating: 5, user: fifi, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: palais)

cantine = Establishment.new(name: "Cantine Gourmande", address: "2 bis rue Flornoy Bordeaux", phone_number: "09 81 84 69 12", description: "Concept original dans le quartier, idéal pour manger des produits frais bien cuisinés.", category: :restaurant, district: st_augustin)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Cantine_Gourmande/Cantine_Gourmande_1_yypluo.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Cantine_Gourmande/Cantine_Gourmande_2_dv2vbc.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175740/Urban_access/restaurants/Cantine_Gourmande/Cantine_Gourmande_3_dfvvsc.jpg")
var1 = {io: file1, filename: "cantine1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "cantine2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "cantine3.jpg", content_type: "image/jpg"}
cantine.photos.attach([var1, var2, var3])
cantine.save!
Review.create!(content: "Concept original dans le quartier, idéal pour manger des produits frais bien cuisinés. Prix très abordables et super ambiance. Je recommande vivement.", access_rating: 4, service_rating: 5, user: coco, establishment: cantine)
Review.create!(content: "Petit restaurant très sympathique dans le quartier de saint Augustin. La cuisine y est bonne, faite avec des produits frais, on se régale. La cuisson des viandes (burger) est parfaite. Le service est impeccable.", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "L'endroit est petit et bien décoré. L'accueil très convivial. Grand choix de burgers. Pas trop d'attente entre la commande et le service. Nous avons vraiment bien mangé.", access_rating: 4, service_rating: 5, user: fifi, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cantine)

sommelier = Establishment.new(name: "Le Bistro du Sommelier", address: "163 rue Georges Bonnac Bordeaux", phone_number: "05 56 96 71 78", description: "Institution à bordeaux pour les amateurs de plats canailles et roboratifs, belle carte des vins.", category: :restaurant, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175742/Urban_access/restaurants/Le_Bistro_du_Sommelier/Le_Bistro_du_Sommelier_1_ejpnua.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175741/Urban_access/restaurants/Le_Bistro_du_Sommelier/Le_Bistro_du_Sommelier_2_qhruhe.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175741/Urban_access/restaurants/Le_Bistro_du_Sommelier/Le_Bistro_du_Sommelier_3_kj4ula.jpg")
var1 = {io: file1, filename: "sommelier1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "sommelier2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "sommelier3.jpg", content_type: "image/jpg"}
sommelier.photos.attach([var1, var2, var3])
sommelier.save!
Review.create!(content: "Un dîner dans un jardin d'hiver où le personnel est souriant, une carte qui donne envie de goûter à tout... Choisir, cruelle nécessité !.", access_rating: 5, service_rating: 5, user: loulou, establishment: sommelier)
Review.create!(content: "Très bon accueil, menu à prix raisonnable et de qualité, idem pour le choix des vins, cadre très agréable.", access_rating: 4, service_rating: 4, user: riri, establishment: sommelier)
Review.create!(content: "Institution à bordeaux pour les amateurs de plats canailles et roboratifs, belle carte des vins a recommander sans hésiter.", access_rating: 5, service_rating: 4, user: coco, establishment: sommelier)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: sommelier)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: sommelier)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: sommelier)

cafe_bastide = Establishment.new(name: "Café Bastide", address: "69 allée Serr Bordeaux", phone_number: "05 56 86 83 31", description: "Au cœur de la Bastide, quartier historique de la rive droite bordelaise, cuisine moderne et gourmande.", category: :restaurant, district: bastide)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Cafe_Bastide/Cafe_Bastide_1_lbzozh.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Cafe_Bastide/Cafe_Bastide_2_f6cbv1.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593175739/Urban_access/restaurants/Cafe_Bastide/Cafe_Bastide_3_lqyjk7.jpg")
var1 = {io: file1, filename: "bastide1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "bastide2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "bastide3.jpg", content_type: "image/jpg"}
cafe_bastide.photos.attach([var1, var2, var3])
cafe_bastide.save!
Review.create!(content: "Très bon restaurant. Les portions sont généreuses et les serveurs sympathiques. Bon rapport qualité prix notamment avec le menu en 3 plats. Le point positif du restaurant est la grande salle et la terrasse.", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "Plusieurs déjeuners pris et toujours satisfait des plats proposés, mention spéciale au magret. La formule entrée-plat ou plat-dessert est raisonnable. Très bon accueil du patron et de ces employés.", access_rating: 5, service_rating: 3, user: loulou, establishment: cafe_bastide)
Review.create!(content: "Nous étions ds le jardinet, et nous avons tous apprécié notre menu très bon rapport qualité prix accueil sympathique, déco : ne partez pas sans admirer Les tableaux !", access_rating: 4, service_rating: 4, user: riri, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: riri, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cafe_bastide)

puts "Create bars"
jaquen = Establishment.new(name: "Jaquen Craft Beer", address: "5 rue Beaubadat Bordeaux", phone_number: "06 48 14 00 38", description: "Super adresse, très bonne ambiance, le service est impeccable et des bières artisanales vraiment très bonnes.", category: :bar, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173319/Urban_access/bars/Jaquen_Craft_Beer/Jaquen_Craft_Beer_1_se1a0p.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173317/Urban_access/bars/Jaquen_Craft_Beer/Jaquen_Craft_Beer_2_ajynz3.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173317/Urban_access/bars/Jaquen_Craft_Beer/Jaquen_Craft_Beer_3_givluh.jpg")
var1 = {io: file1, filename: "jaquen1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "jaquen2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "jaquen3.jpg", content_type: "image/jpg"}
jaquen.photos.attach([var1, var2, var3])
jaquen.save!
Review.create!(content: "Super adresse, très bonne ambiance et le service est impeccable. Des bières artisanales vraiment très bonnes, beaucoup de diversité et à les prix sont très raisonnables.", access_rating: 3, service_rating: 5, user: coco, establishment: jaquen)
Review.create!(content: "Nous nous y sommes arrêtés par hasard et franchement ce fut une bonne découverte pour les amateurs de bières pressions et pas mal de bouteilles aussi... super accueil, très aimable.", access_rating: 3, service_rating: 4, user: loulou, establishment: jaquen)
Review.create!(content: "Bar à bière sympa. Pas mal de choix en pression. Les serveurs conseillent sur les goûts et connaissent bien les bières. La déco est simple.", access_rating: 4, service_rating: 4, user: fifi, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: jaquen)

kingkong = Establishment.new(name: "King Kong Bar", address: "72 quai des Chartrons Bordeaux", phone_number: "05 56 79 25 89", description: "Des cocktails, des barmen et une ambiance de folie! N’attendez plus et tester le meilleur bar de Bordeaux!", category: :bar, district: chartrons)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173320/Urban_access/bars/King_Kong_Bar/King_Kong_Bar_1_afaaw3.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173318/Urban_access/bars/King_Kong_Bar/King_Kong_Bar_2_wuf2bf.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173328/Urban_access/bars/King_Kong_Bar/King_Kong_Bar_3_dahes2.jpg")
var1 = {io: file1, filename: "kingkong1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "kingkong2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "kingkong3.jpg", content_type: "image/jpg"}
kingkong.photos.attach([var1, var2, var3])
kingkong.save!
Review.create!(content: "Super bar avec une ambiance top et de très bon barmans! Les cocktails sont à tombés je recommande à fond!!", access_rating: 4, service_rating: 4, user: riri, establishment: kingkong)
Review.create!(content: "Des cocktails, des barmen et une ambiance de folie! N’attendez plus et tester le meilleur bar de Bordeaux!!!", access_rating: 4, service_rating: 5, user: fifi, establishment: kingkong)
Review.create!(content: "Barman, musique, cocktail au top !! Très bonne ambiance, à profiter en famille, entre amis...toujours une bonne raison pour y aller déguster un verre !", access_rating: 5, service_rating: 4, user: loulou, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: kingkong)

cocoloko = Establishment.new(name: "Coco Loko", address: "3 rue Duffour Dubergier Bordeaux", phone_number: "06 98 81 58 52", description: "This is the place to be crazy !! Comme son nom l’indique, le Coco Loko est le bar de Bordeaux où l’ambiance est la plus folle !", category: :bar, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173320/Urban_access/bars/Coco_Loko/Coco_Loko_1_ux0bnu.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173316/Urban_access/bars/Coco_Loko/Coco_Loko_2_xz3bqu.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173318/Urban_access/bars/Coco_Loko/Coco_Loko_3_xby1l6.jpg")
var1 = {io: file1, filename: "cocoloko1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "cocoloko2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "cocoloko3.jpg", content_type: "image/jpg"}
cocoloko.photos.attach([var1, var2, var3])
cocoloko.save!
Review.create!(content: "Le cocoloko est un bar gayfriendly idéalement placé tout prêt de l'hôtel de ville. Soirées à thèmes, ambiance bon enfant, personnel extrêmement agréable, sécurité assurée.", access_rating: 2, service_rating: 2, user: coco, establishment: cocoloko)
Review.create!(content: "L'endroit est inattendu. Nous osons à peine entrer. Mais l'accueil est aimable et chaleureux, et les cocktails sont très bons. Des tapas (offerts) les accompagnent.", access_rating: 3, service_rating: 3, user: riri, establishment: cocoloko)
Review.create!(content: "Bar gay friendly tres sympa. Super accueil. Ambiance très jeune. Ouvert jusqu'à 2 h du mat. L'endroit idéal pour prendre un verre entre amis.", access_rating: 3, service_rating: 4, user: fifi, establishment: cocoloko)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cocoloko)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cocoloko)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cocoloko)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cocoloko)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: cocoloko)

guinguette = Establishment.new(name: "La Guinguette Chez Alriq", address: "Rue Hortense Bordeaux", phone_number: "05 56 86 58 49", description: "Bel endroit convivial au bord de la Garonne avec des concerts sympas et pour toutes les générations. Une ambiance chaleureuse sans prise de tête et sans chichi.", category: :bar, district: bastide)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173320/Urban_access/bars/La_Guinguette_chez_Alriq/La_Guinguette_chez_Alriq_1_lg9xj2.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173324/Urban_access/bars/La_Guinguette_chez_Alriq/La_Guinguette_chez_Alriq_2_xrrvfv.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173328/Urban_access/bars/La_Guinguette_chez_Alriq/La_Guinguette_chez_Alriq_3_qzydvg.jpg")
var1 = {io: file1, filename: "guinguette1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "guinguette2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "guinguette3.jpg", content_type: "image/jpg"}
guinguette.photos.attach([var1, var2, var3])
guinguette.save!
Review.create!(content: "Excellent endroit qui a certes perdu son charme antan libertaire du temps de Christian et Rose mais a su sauvegarder cet esprit coquin. Cuisine délicieuse, avec des muisiques en live du monde à découvrir.", access_rating: 4, service_rating: 3, user: riri, establishment: guinguette)
Review.create!(content: "Super guinguette avec une jolie programmation et un choix entre plusieurs comptoirs pour se restaurer (pizzas, tapas, huitres, etc). En revanche, bonjour l'addition!", access_rating: 3, service_rating: 3, user: riri, establishment: guinguette)
Review.create!(content: "Cet endroit est juste incroyable, de l’accueil en passant par la gentillesse du personnel. Je recommande fortement.", access_rating: 4, service_rating: 5, user: riri, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: guinguette)

centralpub = Establishment.new(name: "The Central Pub", address: "Rue Reignier Bordeaux", phone_number: "05 57 80 38 00", description: "The Central Pub a été créé en 2004 à l'intérieur de l'ancienne gare d'Orléans, bâtiment classé Monument de France.", category: :bar, district: bastide)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173330/Urban_access/bars/The_Central_Pub/The_Central_Pub_1_xyzocu.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173329/Urban_access/bars/The_Central_Pub/The_Central_Pub_2_nd1auo.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173329/Urban_access/bars/The_Central_Pub/The_Central_Pub_3_miqu0d.jpg")
var1 = {io: file1, filename: "centralpub1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "centralpub2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "centralpub3.jpg", content_type: "image/jpg"}
centralpub.photos.attach([var1, var2, var3])
centralpub.save!
Review.create!(content: "Un super endroit où l’on mange bien et avec des frites maison rare de nos jours hamburger copieux et très bon je recommande service rapide et efficace. Sans oublié bien entendu la superbe vu sur bordeaux.", access_rating: 3, service_rating: 3, user: fifi, establishment: centralpub)
Review.create!(content: "Très bon repas et très bon accueil. On voulais avoir un café mais on a pas eu le temps pas de leur faute.", access_rating: 4, service_rating: 3, user: coco, establishment: centralpub)
Review.create!(content: "Service un peu décousu mais l'affluence pouvait l'excuser. Patron moins sympathique que ses employés, l'ambiance de travail ne doit pas y être terrible... Cuisine correcte, terrasse agréable.", access_rating: 3, service_rating: 2, user: loulou, establishment: centralpub)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 3, service_rating: 4, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: centralpub)
Review.create!(content: "", access_rating: 4, service_rating: 4, user: coco, establishment: centralpub)

makila = Establishment.new(name: "Makila Kafe", address: "Quai de Bacalan Bordeaux", phone_number: "05 57 87 33 21", description: "Situé sur le Quai de Bacalan, en plein centre-ville de Bordeaux, le restaurant Makila Kafé vous ouvre ses portes en bord de Garonne dans un cadre idyllique.", category: :bar, district: maritime)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173328/Urban_access/bars/Makila_Kafe/Makila_Kafe_1_isx8fu.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173327/Urban_access/bars/Makila_Kafe/Makila_Kafe_2_el5wjm.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173328/Urban_access/bars/Makila_Kafe/Makila_Kafe_3_ctkxtq.jpg")
var1 = {io: file1, filename: "makila1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "makila2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "makila3.jpg", content_type: "image/jpg"}
makila.photos.attach([var1, var2, var3])
makila.save!
Review.create!(content: "L'offre de restaurants de qualité est faible sur les quais de bordeaux, Nous avons choisi le makila café pour une pause un samedi midi. L'accueil etait agreable, la deco sympa. Par contre service nul.", access_rating: 3, service_rating: 2, user: loulou, establishment: makila)
Review.create!(content: "Vraiment déçu du service, près d'1h pour recevoir nos verres, aucun serveurs réactifs et désagréables. A fuir !!", access_rating: 2, service_rating: 2, user: riri, establishment: makila)
Review.create!(content: "Service trop long, serveurs pas très aimables et prix trop chère comparé aux autres cafés qui l’entourent.", access_rating: 3, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)
Review.create!(content: "", access_rating: 2, service_rating: 3, user: coco, establishment: makila)

mashup = Establishment.new(name: "Mashup", address: "23 rue des Piliers de Tutelle Bordeaux", phone_number: "05 56 87 67 95", description: "Lieu incontournable des amateurs de bières et de babyfoot. Oubliez la Heineken et dégustez une Paix Dieu! De la vraie bière quoi!", category: :bar, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173328/Urban_access/bars/Mashup/Mashup_1_lrb6z2.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173329/Urban_access/bars/Mashup/Mashup_2_pcfedm.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173329/Urban_access/bars/Mashup/Mashup_3_h00x0c.jpg")
var1 = {io: file1, filename: "mashup1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "mashup2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "mashup3.jpg", content_type: "image/jpg"}
mashup.photos.attach([var1, var2, var3])
mashup.save!
Review.create!(content: "Accueil, employés, qualité des produits ainsi que le cadre permettent un moment agréable. Ravis !!!!", access_rating: 5, service_rating: 4, user: loulou, establishment: mashup)
Review.create!(content: "Très bon accueil, bonne ambiance. Le patron Guillaume est super accueillant. Les plateaux de charcuterie et de fromage sont très bons. On peut jouer aux fléchettes et baby foot.", access_rating: 4, service_rating: 4, user: coco, establishment: mashup)
Review.create!(content: "Très cool de super sièges, franchement on y est bien. Musique sympa, un havre de paix après avoir bien trotté dans les rues de Bordeaux.", access_rating: 4, service_rating: 5, user: fifi, establishment: mashup)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: coco, establishment: mashup)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: coco, establishment: mashup)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: coco, establishment: mashup)

puts "Create theaters"
gallien = Establishment.new(name: "Comédie Gallien", address: "20 rue Rolland Bordeaux", phone_number: "05 56 44 04 44", description: "Équipée pour accueillir une centaine de spectateurs, cette salle est confortable. À taille humaine, elle permet d'être proche de l'artiste sur scène.", category: :theatre, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173497/Urban_access/theatres/Comedie_Gallien/Comedie_Gallien_1_f61iyh.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173497/Urban_access/theatres/Comedie_Gallien/Comedie_Gallien_2_w58ck2.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173497/Urban_access/theatres/Comedie_Gallien/Comedie_Gallien_3_i49n0w.jpg")
var1 = {io: file1, filename: "gallien1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "gallien2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "gallien3.jpg", content_type: "image/jpg"}
gallien.photos.attach([var1, var2, var3])
gallien.save!
Review.create!(content: "Ce très beau batiment abrite une magnifique salle de spectacle. C'est juste tres difficile d'obtenir des places à moins d'attendre assez longtemps", access_rating: 4, service_rating: 4, user: riri, establishment: gallien)
Review.create!(content: "Hier soir, j'ai vu la pièce : Le gâteau de Troie. C'est une version revisitée du cheval de Troie. Spectacle super drôle, on a bien rigolé. Les 5 acteurs sont extra, nous avons vraiment passé un très bon moment.", access_rating: 4, service_rating: 3, user: fifi, establishment: gallien)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: gallien)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: gallien)
Review.create!(content: "", access_rating: 3, service_rating: 3, user: coco, establishment: gallien)

# theatrechartrons = Establishment.new(name: "Café Théâtre des Chartrons", address: "170 cours du Médoc Bordeaux", phone_number: "05 56 37 63 44", description: "Café théâtre sans fioritures mais agréable. Personnel accueillant et sympathique. Possibilité de boire un verre avant et après le spectacle, voire de manger sur le pouce.", category: :theatre, district: )
# file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173498/Urban_access/theatres/ctc/ctc_1_anrvqq.jpg")
# file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173497/Urban_access/theatres/ctc/ctc_2_fp4pfi.jpg")
# file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173497/Urban_access/theatres/ctc/ctc_3_rsft5m.jpg")
# var1 = {io: file1, filename: "theatrechartrons1.jpg", content_type: "image/jpg"}
# var2 = {io: file2, filename: "theatrechartrons2.jpg", content_type: "image/jpg"}
# var3 = {io: file3, filename: "theatrechartrons3.jpg", content_type: "image/jpg"}
# theatrechartrons.photos.attach([var1, var2, var3])
# theatrechartrons.save!

# opera = Establishment.new(name: "Opéra National de Bordeaux", address: "Place de la Comédie Bordeaux", phone_number: "05 56 00 85 95", description: "Inauguré le 7 avril 1780, le Grand-Théâtre de Bordeaux écrit son histoire au rythme des événements qui ponctuent son existence.", category: :theatre, district: )
# file1 = URI.open("hhttps://res.cloudinary.com/dskt3rtif/image/upload/v1593173498/Urban_access/theatres/opera/opera_1_ndo3gs.jpg")
# file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173499/Urban_access/theatres/opera/opera_2_zed1aq.jpg")
# file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173498/Urban_access/theatres/opera/opera_3_h1mpzo.jpg")
# var1 = {io: file1, filename: "opera1.jpg", content_type: "image/jpg"}
# var2 = {io: file2, filename: "opera2.jpg", content_type: "image/jpg"}
# var3 = {io: file3, filename: "opera3.jpg", content_type: "image/jpg"}
# opera.photos.attach([var1, var2, var3])
# opera.save!

puts "Create cinema"
megarama = Establishment.new(name: "Megarama", address: "7 allée Serr Bordeaux", phone_number: "05 56 40 66 70", description: "Situé dans l’ancienne Gare d’Orléans, le cinéma Mégarama est un très grand cinema au bord de Garonne avec de très belles salles.", category: :cinema, district: bastide)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173374/Urban_access/cinemas/megarama/megarama_1_gvkcjk.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173374/Urban_access/cinemas/megarama/megarama_2_ci7v5e.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173375/Urban_access/cinemas/megarama/megarama_3_drhuew.jpg")
var1 = {io: file1, filename: "megarama1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "megarama2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "megarama3.jpg", content_type: "image/jpg"}
megarama.photos.attach([var1, var2, var3])
megarama.save!
Review.create!(content: "Le service, le confort et la qualité des salles, tout est là !", access_rating: 5, service_rating: 3, user: coco, establishment: megarama)
Review.create!(content: "A 5 min de la maison et tout ce qu'il faut. Séances de divers types et à plusieurs moments intéressants de la journée", access_rating: 4, service_rating: 3, user: fifi, establishment: megarama)
Review.create!(content: "Les salles sont propres et accessibles. Salle horizon vraiment impressionnante le son étant bien géré.", access_rating: 5, service_rating: 3, user: riri, establishment: megarama)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: coco, establishment: megarama)

utopia = Establishment.new(name: "Utopia", address: "5 place Camille Jullian Bordeaux", phone_number: "05 56 52 00 03", description: "Face à une petite place coquette, une ancienne église transformée en café/cinéma plutôt original et atypique.", category: :cinema, district: centre_ville)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173376/Urban_access/cinemas/utopia/utopia_1_nhef9i.jpg")
file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173375/Urban_access/cinemas/utopia/utopia_3_tkdryk.jpg")
file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173375/Urban_access/cinemas/utopia/utopia_3_tkdryk.jpg")
var1 = {io: file1, filename: "utopia1.jpg", content_type: "image/jpg"}
var2 = {io: file2, filename: "utopia2.jpg", content_type: "image/jpg"}
var3 = {io: file3, filename: "utopia3.jpg", content_type: "image/jpg"}
utopia.photos.attach([var1, var2, var3])
utopia.save!
Review.create!(content: "Ce cinéma qui a l’origine était une église offre des films magnifiques souvent en version originale ainsi que des conférences.", access_rating: 4, service_rating: 4, user: coco, establishment: utopia)
Review.create!(content: "Dans une ancienne Église , qui cache un café, qui cache une brasserie, qui cache un cinéma à moins que cela soit l'inverse. Lieux donc atypique et très agréable.", access_rating: 3, service_rating: 5, user: loulou, establishment: utopia)
Review.create!(content: "J'ai toujours plaisir à voir un film dans cette salle originale à plus d'un titre. Le vaste hall d'accueil est en réalité un café sympathique.", access_rating: 4, service_rating: 4, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)
Review.create!(content: "", access_rating: 4, service_rating: 3, user: riri, establishment: utopia)

# francaiscgr = Establishment.new(name: "CGR Le Français", address: "9 rue Montesquieu Bordeaux", phone_number: "0 892 688 588", description: "Avant d’être le cinéma Le Français, ce beau bâtiment situé dans le quartier Gambetta et réalisé par l’architecte Jean-Baptiste Dufart, avait pour vocation le théâtre.", category: :cinema, district: centre_ville)
# file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173374/Urban_access/cinemas/cgr/cgr_1_bd9r3y.jpg")
# file2 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173374/Urban_access/cinemas/cgr/cgr_2_okzdg8.jpg")
# file3 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593173374/Urban_access/cinemas/cgr/cgr_3_txv4rj.jpg")
# var1 = {io: file1, filename: "francaiscgr1.jpg", content_type: "image/jpg"}
# var2 = {io: file2, filename: "francaiscgr2.jpg", content_type: "image/jpg"}
# var3 = {io: file3, filename: "francaiscgr3.jpg", content_type: "image/jpg"}
# francaiscgr.photos.attach([var1, var2, var3])
# francaiscgr.save!

puts "Create reports"
trottoirstravaux = Report.new(title: "Travaux trottoirs", content: "Des travaux de réaménagement des trottoirs ont lieu actuellement rue du Bocage et empêche tout passage.", location: "10 Rue du Bocage, Bordeaux", progress: "", user: coco)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593358293/Urban_access/reports/reports-trottoirs_travaux_yp05pq.jpg")
var1 = {io: file1, filename: "reportstrottoirstravaux.jpg", content_type: "image/jpg"}
trottoirstravaux.photo.attach(var1)
trottoirstravaux.save!

trotinettes = Report.new(title: "Trottoir encombré", content: "Je signale qu'un stationnement sauvage de trotinettes en libre service rend difficile la circulation sur le trottoir Place Gambetta.", location: "7 Place Gambetta, Bordeaux", progress: "", user: coco)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593358277/Urban_access/reports/reports-trotinettes_hygi7b.jpg")
var1 = {io: file1, filename: "reportstrotinettes.jpg", content_type: "image/jpg"}
trotinettes.photo.attach(var1)
trotinettes.save!

gare = Report.new(title: "Accès à la gare", content: "La dernière fois que j'ai dû me rendre à la gare, j'ai remarqué l'absence de moyen d'accès adapté pour accéder au quai.", location: "40 rue Charles Domercq, Bordeaux", progress: "", user: coco)
file1 = URI.open("https://res.cloudinary.com/dskt3rtif/image/upload/v1593358286/Urban_access/reports/reports-gare_xtzdlq.jpg")
var1 = {io: file1, filename: "reportstrotinettes.jpg", content_type: "image/jpg"}
gare.photo.attach(var1)
gare.save!

puts "Finish!"
