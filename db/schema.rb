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

ActiveRecord::Schema.define(version: 2019_03_16_135211) do

  create_table "aircrafts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aircrafts_cities", id: false, force: :cascade do |t|
    t.integer "aircraft_id"
    t.integer "city_id"
    t.index ["aircraft_id"], name: "index_aircrafts_cities_on_aircraft_id"
    t.index ["city_id"], name: "index_aircrafts_cities_on_city_id"
  end

  create_table "aircrafts_companies", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "aircraft_id"
    t.index ["aircraft_id"], name: "index_aircrafts_companies_on_aircraft_id"
    t.index ["company_id"], name: "index_aircrafts_companies_on_company_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities_companies", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "city_id"
    t.index ["city_id"], name: "index_cities_companies_on_city_id"
    t.index ["company_id"], name: "index_cities_companies_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
