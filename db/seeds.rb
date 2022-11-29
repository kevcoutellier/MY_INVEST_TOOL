# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
puts 'Seed: Deleting existing records...'




CustomInvest.destroy_all

User.destroy_all

user = User.create!(email: "ted@my_invest.fr", password: "password", owner: false)
user = User.create!(email: "kev@my_invest.fr", password: "password", owner: false)
user = User.create!(email: "dia@my_invest.fr", password: "password", owner: false)


# file = URI.open("https://res.cloudinary.com/dezfv3vmn/image/upload/v1669731177/my_invest/nike-futur_iacdl6.jpg")
# custom_invest = CustomInvest.new(name: "Nike RVF", category: "shoes", description: "Les chaussures de retour vers le futur version NIKE industrie", quantity: 1, unity_cost: 180, actual_cost: 400, user: user)
# custom_invest.photo.attach(io: file, filename: "nike-futur.jpg", content_type: "image/jpg")
# custom_invest.save
