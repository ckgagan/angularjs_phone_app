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

ActiveRecord::Schema.define(version: 20130907045233) do

  create_table "batteries", force: true do |t|
    t.string   "battery_type"
    t.string   "talk_time"
    t.string   "standby"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "batteries", ["phone_id"], name: "index_batteries_on_phone_id", using: :btree

  create_table "cameras", force: true do |t|
    t.string   "front"
    t.string   "rear"
    t.string   "features"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cameras", ["phone_id"], name: "index_cameras_on_phone_id", using: :btree

  create_table "connectivities", force: true do |t|
    t.string   "cell"
    t.string   "wifi"
    t.string   "bluetooth"
    t.boolean  "infrared"
    t.boolean  "gps"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "connectivities", ["phone_id"], name: "index_connectivities_on_phone_id", using: :btree

  create_table "dimensions", force: true do |t|
    t.string   "length"
    t.string   "breadth"
    t.string   "weigth"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dimensions", ["phone_id"], name: "index_dimensions_on_phone_id", using: :btree

  create_table "displays", force: true do |t|
    t.string   "screen_size"
    t.string   "screen_resolution"
    t.boolean  "touch_screen"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "displays", ["phone_id"], name: "index_displays_on_phone_id", using: :btree

  create_table "images", force: true do |t|
    t.string   "image"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_systems", force: true do |t|
    t.string   "os"
    t.string   "ui"
    t.string   "version"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "operating_systems", ["phone_id"], name: "index_operating_systems_on_phone_id", using: :btree

  create_table "phones", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "availability"
    t.text     "additional_features"
  end

  create_table "storages", force: true do |t|
    t.string   "ram"
    t.string   "flash"
    t.string   "phone"
    t.integer  "phone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "storages", ["phone_id"], name: "index_storages_on_phone_id", using: :btree

end
