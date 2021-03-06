# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180802111733) do

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.date   "eaten_on"
  end

  add_index "dishes", ["name"], name: "index_dishes_on_name"

  create_table "meal_log_entries", force: :cascade do |t|
    t.datetime "eaten_on"
    t.text     "meal"
    t.integer  "meal_log_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "meal_logs", force: :cascade do |t|
    t.string   "name"
    t.date     "from"
    t.date     "till"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.date    "eaten_on"
    t.integer "dish_id"
  end

  add_index "meals", ["dish_id"], name: "index_meals_on_dish_id"

end
