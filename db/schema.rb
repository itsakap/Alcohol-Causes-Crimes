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

ActiveRecord::Schema.define(version: 20140322230540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abc_licenses", force: true do |t|
    t.integer  "license_file_number"
    t.string   "dba_name"
    t.string   "primary_name"
    t.string   "type_original_issue"
    t.string   "expiration_date"
    t.string   "license_type"
    t.string   "premise_street_address"
    t.string   "premise_city"
    t.string   "premise_state"
    t.string   "premise_zipcode"
    t.string   "license_or_application"
    t.string   "months_of_term"
    t.string   "mail_street_address"
    t.string   "mail_city"
    t.string   "mail_state"
    t.string   "mail_zipcode"
    t.string   "premise_county"
    t.float    "premise_census_tract"
    t.integer  "district_office_code"
    t.boolean  "master_indicator"
    t.integer  "geocode"
    t.string   "fee_code"
    t.integer  "duplicate_counts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uniform_crime_reports", force: true do |t|
    t.string   "city"
    t.string   "state"
    t.string   "state_abbv"
    t.integer  "city_population"
    t.integer  "number_of_violent_crimes"
    t.integer  "murder_and_nonnegligent_manslaughter"
    t.integer  "forcible_rape"
    t.integer  "robbery"
    t.integer  "aggravated_assault"
    t.integer  "property_crime"
    t.integer  "burglary"
    t.integer  "larceny_theft"
    t.integer  "motor_vehicle_theft"
    t.integer  "arson"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
