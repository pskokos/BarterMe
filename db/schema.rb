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

ActiveRecord::Schema.define(version: 20150421034247) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "from"
    t.text     "message"
    t.integer  "offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.integer  "user_id"
    t.string   "location"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "line_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   default: 1
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["item_id"], name: "index_line_items_on_item_id"

  create_table "locations", force: true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offers", force: true do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.string   "item1_id"
    t.string   "item2_id"
    t.boolean  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "pending"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.integer  "reliability"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.text     "looking_for"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "password_digest"
    t.integer  "cart_id"
    t.string   "image"
  end

end
