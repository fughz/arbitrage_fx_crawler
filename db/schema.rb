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

ActiveRecord::Schema.define(version: 20160512135834) do

  create_table "currency_pairs", force: :cascade do |t|
    t.string   "name",       null: false
    t.float    "value",      null: false
    t.datetime "date",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swap_points", force: :cascade do |t|
    t.float    "short_point",      null: false
    t.float    "long_point",       null: false
    t.integer  "currency_unit",    null: false
    t.datetime "date",             null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "trader_id"
    t.integer  "currency_pair_id"
  end

  add_index "swap_points", ["currency_pair_id"], name: "index_swap_points_on_currency_pair_id"
  add_index "swap_points", ["trader_id"], name: "index_swap_points_on_trader_id"

  create_table "traders", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "key",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
