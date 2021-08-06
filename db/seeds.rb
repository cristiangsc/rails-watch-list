# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

List.destroy_all
Movie.destroy_all

50.times do
  Movie.create(title: Faker::Movie.title,
   overview: Faker::Movie.quote,
   poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
   rating: rand(1.5..10)
  )
end


List.create(name: "Drama")
List.create(name: "Suspenso")
List.create(name: "Terror")
List.create(name: "Todos los tiempo")
List.create(name: "ciencia ficción")
