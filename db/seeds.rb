# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Api.create!(stars: 1, watchers: 2, forks: 3)
Api.create!(stars: 2, watchers: 3, forks: 4)
Api.create!(stars: 3, watchers: 4, forks: 5)
Api.create!(stars: 4, watchers: 5, forks: 6)
