# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

# Fish.destroy_all
# Opponent.destroy_all
# Fight.destroy_all


fishes = []
opponents = []

for i in 0..9
    fish = Fish.new(name: Faker::Creature::Dog.name, img_url: "fish#{i + 1}")
    fish.getStats
    fish.save
    fishes << fish

    hp = 400 + (i * 100)
    power = 500 + (i * 100)
end

    melanie = Opponent.create(name: "Melanie", img_url: "melanie", hp: 1000, power: 800)
    jake = Opponent.create(name: "Jake", img_url: "jake", hp: 1500, power: 2000)
    paul = Opponent.create(name: "Paul", img_url: "paul", hp: 3000, power: 3000)
    ann = Opponent.create(name: "Ann", img_url: "ann", hp: 4500, power: 5000)



for i in 0..15
    bool = i%2 == 0
    fight = Fight.new(fish: fishes.sample, opponent: opponents.sample)
    fight.won = bool
    fight.update_fish
    fight.save
end
