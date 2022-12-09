require "open-uri"
puts 'Seed: Deleting existing records...'

RealEstate.destroy_all
CustomInvest.destroy_all
User.destroy_all
BankAccount.destroy_all
Liability.destroy_all



user = User.create!(email: "ted@my_invest.fr", password: "password", owner: false)
user1 = User.create!(email: "kev@my_invest.fr", password: "password", owner: false)
user2 = User.create!(email: "dia@my_invest.fr", password: "password", owner: false)

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670531153/development/Capture_d_e%CC%81cran_2022-12-08_a%CC%80_21.25.38_jsuqoy.png")
liability = Liability.new(
  loan_name: "Miami House credit",
  type_of: "Amortising loan(standard)",
  amount: 200_000,
  monthly_payment: 500,
  interest_rate: 1.3,
  start_date: Date.new(2018, 11, 16),
  duration: 180,
  user: user
)
liability.photo.attach(io: file, filename: "smc.jpg", content_type: "image/jpg")
liability.save

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670531153/development/Capture_d_e%CC%81cran_2022-12-08_a%CC%80_21.25.38_jsuqoy.png")
liability2 = Liability.new(
  loan_name: "Palm Beach House credit",
  type_of: "Amortising loan(standard)",
  amount: 300_000,
  monthly_payment: 750,
  interest_rate: 1.3,
  start_date: Date.new(2015, 10, 22),
  duration: 180,
  user: user2
)
liability2.photo.attach(io: file, filename: "smc.jpg", content_type: "image/jpg")
liability2.save

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

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669731149/my_invest/or_qwq5pe.jpg")
custom_invest1 = CustomInvest.new(
name: "Nike RVF",
category: "precious metals",
description: "L'or en barre",
quantity: 100,
unity_cost: 45,
actual_cost: 55,
user: user1)
custom_invest1.photo.attach(io: file, filename: "or.jpg", content_type: "image/jpg")
custom_invest1.save


file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670505631/development/kam-idris-_HqHX3LBN18-unsplash_led0sq.jpg")
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

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670505633/development/loewe-technology-azMs02-lAFk-unsplash_ppmpxw.jpg")
real_estate2 = RealEstate.new(
  address: "93 Palm Ave, Miami Beach, FL 33139, États-Unis",
  description: "Rental 93 Palm",
  type_of: "Ground",
  category: "Principal residence",
  purchase_price: 50_000,
  estimation: 55_000,
  floor_space: 100,
  year_of_construction: Date.new(2010, 11, 17),
  date_of_purchase: Date.new(2019, 12, 12),
  user: user1
)
real_estate2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate2.save

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670505630/development/kam-idris-wF9NH87U-2E-unsplash_jrj3xs.jpg")
real_estate3 = RealEstate.new(
  address: "33 Palm Ave, Miami Beach, FL 33139, États-Unis",
  description: "Rental 33 Palm",
  type_of: "Flat",
  category: "Principal residence",
  purchase_price: 500_000,
  estimation: 490_000,
  floor_space: 100,
  year_of_construction: Date.new(2010, 11, 17),
  date_of_purchase: Date.new(2019, 12, 12),
  user: user2
)
real_estate3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
real_estate3.save

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670336813/my_invest/Logo-BNP-Paribas_nyo21v.jpg")
bank_account = BankAccount.new(
  bank: "BNP Paribas",
  account_number: "FR3530003000704398932537S50",
  type_of: "Current account",
  balance: 13_531,
  currency: "USD",
  user: user
)
bank_account.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bank_account.save




# bank_account2 = BankAccount.create!(
#   bank: "BNP Paribas",
#   account_number: "FR5010096000706258456462I21",
#   type_of: "Savings account",
#   balance: 8767,
#   currency: "USD",
#   user: user
# )


file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670336802/my_invest/societe_generale_ejdfd3.png")
bank_account3 = BankAccount.new(
  bank: "Société Générale",
  account_number: "FR4217569000301711585427S64",
  type_of: "Current account",
  balance: 14_265,
  currency: "USD",
  user: user1
)
bank_account3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bank_account3.save



  # bank_account4 = BankAccount.create!(
  #   bank: "Société Générale",
  #   account_number: "FR4217569000301711585427S64",
  #   type_of: "Savings account",
  #   balance: 2500,
  #   currency: "USD",
  #   user: user1
  # )

file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1670336807/my_invest/t%C3%A9l%C3%A9chargement_3_qgihfd.png")
bank_account5 = BankAccount.new(
  bank: "Crédit Mutuel",
  account_number: "FR2510096000403743519222V21",
  type_of: "Current account",
  balance: 8500,
  currency: "USD",
  user: user2
)
bank_account5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
bank_account5.save



  # bank_account6 = BankAccount.create!(
  #   bank: "Crédit Mutuel",
  #   account_number: "FR2510096000403743519222V21",
  #   type_of: "Savings account",
  #   balance: 10_500,
  #   currency: "USD",
  #   user: user2
  # )

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
