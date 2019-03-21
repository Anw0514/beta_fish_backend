# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_21_200609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fights", force: :cascade do |t|
    t.bigint "fish_id"
    t.bigint "opponent_id"
    t.boolean "won"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fish_id"], name: "index_fights_on_fish_id"
    t.index ["opponent_id"], name: "index_fights_on_opponent_id"
  end

  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.integer "hp"
    t.integer "power"
    t.integer "games_won"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opponents", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.integer "hp"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fights", "fish"
  add_foreign_key "fights", "opponents"
end
