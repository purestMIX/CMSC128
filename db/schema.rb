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

ActiveRecord::Schema.define(version: 20161212171548) do

  create_table "brands", force: :cascade do |t|
    t.string   "brandName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generics", force: :cascade do |t|
    t.string   "genericName"
    t.string   "desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "med_symptomps", force: :cascade do |t|
    t.integer  "medicines_id"
    t.integer  "symptomps_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "med_symptomps", ["medicines_id"], name: "index_med_symptomps_on_medicines_id"
  add_index "med_symptomps", ["symptomps_id"], name: "index_med_symptomps_on_symptomps_id"

  create_table "medicines", force: :cascade do |t|
    t.integer  "brand_id"
    t.integer  "generic_id"
    t.string   "medType"
    t.string   "Classification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "medicines", ["brand_id"], name: "index_medicines_on_brand_id"
  add_index "medicines", ["generic_id"], name: "index_medicines_on_generic_id"

  create_table "stocks", force: :cascade do |t|
    t.integer  "medicines_id"
    t.integer  "quantity"
    t.integer  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "stocks", ["medicines_id"], name: "index_stocks_on_medicines_id"

  create_table "symptomps", force: :cascade do |t|
    t.string   "symptompsName"
    t.string   "symptompsDesc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
