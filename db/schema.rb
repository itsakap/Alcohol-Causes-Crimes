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

ActiveRecord::Schema.define(version: 20140326235308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.integer  "population"
    t.integer  "violent_crimes"
    t.string   "city_name"
    t.string   "state"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "county_id"
  end

  add_index "cities", ["county_id"], name: "index_cities_on_county_id", using: :btree

  create_table "city_counties", force: true do |t|
    t.string   "city_name"
    t.string   "state"
    t.string   "code"
    t.string   "county_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", force: true do |t|
    t.string   "county_name"
    t.string   "state"
    t.string   "code"
    t.float    "pc_liquor_stores"
    t.float    "pc_violent_crimes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "liquor_store_count",  default: 0
    t.integer  "violent_crime_count", default: 0
    t.integer  "population",          default: 0
  end

  create_table "liquor_stores", force: true do |t|
    t.string   "license_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "county_id"
  end

  add_index "liquor_stores", ["county_id"], name: "index_liquor_stores_on_county_id", using: :btree

end
