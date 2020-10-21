# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

genres = ["action", "horreur", "comédie", "drame"]

100.times do 
    movie = Movie.create!(name: Faker::Movie.title, year: rand(1900..2020), genre: genres[rand(0..3)], synopsis: "un deux trois quatre cinq six sept huit neuf dix", director: Faker::Book.author, allocine_rating: rand(0..5), already_seen: false)
end