# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fish.destroy_all
Opponent.destroy_all
Fight.destroy_all

plecko = Fish.create(name: 'Plecko', img_url: '', hp: 1500, power: 700, games_won: 1)
Fish.create(name: 'Goldie', img_url: '', hp: 1000, power: 1100, games_won: 1)

l1 = Opponent.create(name: 'basic beach', img_url: '', hp: 600, power: 800)
l2 = Opponent.create(name: 'less basic of a beach', img_url: '', hp: 800, power: 900)

Fight.create(fish: plecko, opponent: l2, won: true)
Fight.create(fish: plecko, opponent: l1, won: true)
