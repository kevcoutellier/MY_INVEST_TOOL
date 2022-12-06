require "open-uri"
puts 'Seed: Deleting existing records...'

RealEstate.destroy_all
CustomInvest.destroy_all
User.destroy_all
BankAccount.destroy_all



user = User.create!(email: "ted@my_invest.fr", password: "password", owner: false)
user1 = User.create!(email: "kev@my_invest.fr", password: "password", owner: false)
user2 = User.create!(email: "dia@my_invest.fr", password: "password", owner: false)


file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669731177/my_invest/nike-futur_iacdl6.jpg")
custom_invest = CustomInvest.new(
name: "Nike RVF",
category: "shoes",
description: "Les chaussures de retour vers le futur version NIKE industrie",
quantity: 1,
unity_cost: 180,
actual_cost: 400,
user: user)
custom_invest.photo.attach(io: file, filename: "nike-futur.jpg", content_type: "image/jpg")
custom_invest.save



file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801293/my_invest/appartement-photo_cavo34.jpg")
real_estate = RealEstate.new(
  address: "11 Palm Ave, Miami Beach, FL 33139, États-Unis",
  description: "My Home",
  type_of: "House",
  category: "Principal residence",
  purchase_price: 200_000,
  estimation: 220_000,
  floor_space: 200,
  year_of_construction: Date.new(1978, 11, 23),
  date_of_purchase: Date.new(2018, 11, 16),
  user: user
)
real_estate.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate.save
file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801296/my_invest/t%C3%A9l%C3%A9chargement_4_ybxmeu.jpg")
real_estate2 = RealEstate.new(
  address: "93 Palm Ave, Miami Beach, FL 33139, États-Unis",
  description: "Airbnb le Wagon",
  type_of: "Ground",
  category: "Principal residence",
  purchase_price: 50_000,
  estimation: 70_000,
  floor_space: 100,
  year_of_construction: Date.new(2010, 11, 17),
  date_of_purchase: Date.new(2019, 12, 12),
  user: user1
)
real_estate2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate2.save
file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669801299/my_invest/t%C3%A9l%C3%A9chargement_3_stjfjt.jpg")

real_estate3 = RealEstate.new(
  address: "33 Palm Ave, Miami Beach, FL 33139, États-Unis",
  description: "Airbnb le Wagon",
  type_of: "Flat",
  category: "Principal residence",
  purchase_price: 500_000,
  purchase_price: 530_000,
  floor_space: 100,
  year_of_construction: Date.new(2010, 11, 17),
  date_of_purchase: Date.new(2019, 12, 12),
  user: user2
)
real_estate3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate3.save


bank_account = BankAccount.create!(
  bank: "BNP Paribas",
  account_number: "FR3530003000704398932537S50",
  type_of: "Current account",
  balance: 13_531,
  currency: "EUR",
  user: user
)

bank_account2 = BankAccount.create!(
  bank: "BNP Paribas",
  account_number: "FR5010096000706258456462I21",
  type_of: "Savings account",
  balance: 8767,
  currency: "EUR",
  user: user
)

  bank_account3 = BankAccount.create!(
    bank: "Société Générale",
    account_number: "FR4217569000301711585427S64",
    type_of: "Current account",
    balance: 14_265,
    currency: "EUR",
    user: user1
  )

  bank_account4 = BankAccount.create!(
    bank: "Société Générale",
    account_number: "FR4217569000301711585427S64",
    type_of: "Savings account",
    balance: 2500,
    currency: "EUR",
    user: user1
  )

  bank_account5 = BankAccount.create!(
    bank: "Crédit Mutuel",
    account_number: "FR2510096000403743519222V21",
    type_of: "Current account",
    balance: 8500,
    currency: "EUR",
    user: user2
  )

  bank_account6 = BankAccount.create!(
    bank: "Crédit Mutuel",
    account_number: "FR2510096000403743519222V21",
    type_of: "Savings account",
    balance: 10_500,
    currency: "EUR",
    user: user2
  )

puts 'Seed: Finished seeding!'


# real_estate2 = RealEstate.create!(
#   address: "93 Palm Ave, Miami Beach, FL 33139, États-Unis",
#   description: "Airbnb le Wagon",
#   type_of: "Flat",
#   category: "Principal residence",
#   purchase_price: 50_000,
#   floor_space: 100,
#   year_of_construction: Date.new(2010, 11, 17),
#   date_of_purchase: Date.new(2019, 12, 12),
#   user: user1
# )
