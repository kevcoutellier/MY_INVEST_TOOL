
require "open-uri"
puts 'Seed: Deleting existing records...'



User.destroy_all
CustomInvest.destroy_all
RealEstate.destroy_all


user = User.create!(email: "ted@my_invest.fr", password: "password", owner: false)
user1 = User.create!(email: "kev@my_invest.fr", password: "password", owner: false)
user2 = User.create!(email: "dia@my_invest.fr", password: "password", owner: false)


# file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669731177/my_invest/nike-futur_iacdl6.jpg")
# custom_invest = CustomInvest.new(
# name: "Nike RVF",
# category: "shoes",
# description: "Les chaussures de retour vers le futur version NIKE industrie",
# quantity: 1,
# unity_cost: 180,
# actual_cost: 400,
# user: user)
# custom_invest.photo.attach(io: file, filename: "nike-futur.jpg", content_type: "image/jpg")
# custom_invest.save



file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801293/my_invest/appartement-photo_cavo34.jpg")
real_estate = RealEstate.new(
  address: "63 Corniche Bellevue, Nice",
  description: "Chez moi",
  type_of: "Maison",
  category: "Résidence principale",
  purchase_price: 200_000,
  floor_space: 200,
  year_of_construction: Date.new(1978, 11, 23),
  date_of_purchase: Date.new(2018, 11, 16),
  user: user
)
real_estate.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate.save
file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801296/my_invest/t%C3%A9l%C3%A9chargement_4_ybxmeu.jpg")
real_estate2 = RealEstate.new(
  address: "21 avenue Thiers, Nice",
  description: "Airbnb le Wagon",
  type_of: "Appartement",
  category: "Résidence secondaire",
  purchase_price: 50_000,
  floor_space: 100,
  year_of_construction: Date.new(2010, 11, 17),
  date_of_purchase: Date.new(2019, 12, 12),
  user: user2
)
real_estate2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate2.save
file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801299/my_invest/t%C3%A9l%C3%A9chargement_3_stjfjt.jpg")
real_estate3 = RealEstate.new(
  address: "36 avenue Beau site, Nice",
  description: "Location à l'année",
  type_of: "Appartement",
  category: "Bien locatif",
  purchase_price: 100_000,
  floor_space: 50,
  year_of_construction: Date.new(1999, 11, 23),
  date_of_purchase: Date.new(2010, 11, 16),
  user: user3
)
real_estate3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate3.save

