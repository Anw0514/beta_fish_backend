# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Fight.destroy_all
Fish.destroy_all
Opponent.destroy_all


fishes = []
opponents = []

for i in 0..10
    fish = Fish.new(name: Faker::Creature::Dog.name, img_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{rand(1..150)}.png")
    fish.getStats
    fish.save
    fishes << fish

    hp = 400 + (i * 100)
    power = 500 + (i * 100)

    opponent = Opponent.create(name: "Level #{i}", img_url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{rand(1..150)}.png", hp: hp, power: power)
    opponents << opponent
end

for i in 0..15
    bool = i%2 == 0
    Fight.create(fish: fishes.sample, opponent: opponents.sample)
end
