# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Seed: Deleting existing records...'
RealEstate.destroy_all
User.destroy_all

user = User.create!(email: "dianaspieser@gmail.com", password: "password")
user2 = User.create!(email: "kev.coutellier@gmail.com", password: "password")

real_estate = RealEstate.create!(address: "63 Corniche Bellevue, Nice",
  description: "home", type_of: "Maison", category: "Résidence principale",purchase_price: 200000, floor_space: 200,
  year_of_construction: Date.new(1978,11,02), date_of_purchase: Date.new(1978,11,02), user: user)

real_estate2 = RealEstate.create!(address: "21 avenue Thiers, Nice",
    description: "home",type_of: "Appartement",category: "Résidence principale",purchase_price: 50000, floor_space: 100,
    year_of_construction: Date.new(1978,11,02), date_of_purchase: Date.new(1978,11,02), user: user2)

puts 'Seed: Finished seeding!'
