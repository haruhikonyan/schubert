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

ActiveRecord::Schema.define(version: 20170311090855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recruit_request_instruments", force: :cascade do |t|
    t.integer  "recruit_request_id", null: false
    t.integer  "instrument_id",      null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["instrument_id"], name: "index_recruit_request_instruments_on_instrument_id", using: :btree
    t.index ["recruit_request_id"], name: "index_recruit_request_instruments_on_recruit_request_id", using: :btree
  end

  create_table "recruit_requests", force: :cascade do |t|
    t.string   "practice_place"
    t.string   "practice_time"
    t.text     "free_text"
    t.datetime "post_period_from"
    t.datetime "post_period_to"
    t.integer  "team_id",          null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["team_id"], name: "index_recruit_requests_on_team_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "team_regions", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_team_regions_on_region_id", using: :btree
    t.index ["team_id"], name: "index_team_regions_on_team_id", using: :btree
  end

  create_table "team_types", force: :cascade do |t|
    t.integer  "team_id",    null: false
    t.integer  "type_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_types_on_team_id", using: :btree
    t.index ["type_id"], name: "index_team_types_on_type_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "password",   null: false
    t.string   "mail"
    t.string   "url"
    t.text     "free_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
