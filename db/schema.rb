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

ActiveRecord::Schema.define(version: 20170316081645) do

  create_table "buymart_store_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "location_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "country"
    t.string   "state_addr"
    t.integer  "postal_code"
    t.string   "county"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end
end
