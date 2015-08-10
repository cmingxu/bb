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

ActiveRecord::Schema.define(version: 20150810151201) do

  create_table "alliance_memberships", force: :cascade do |t|
    t.integer  "alliance_id"
    t.string   "state"
    t.integer  "player_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "alliances", force: :cascade do |t|
    t.string   "name"
    t.integer  "member_count"
    t.integer  "created_by"
    t.string   "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "building_type"
    t.integer  "level"
    t.integer  "city_id"
    t.integer  "x"
    t.integer  "y"
    t.integer  "player_id"
    t.datetime "last_updated_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "login_logs", force: :cascade do |t|
    t.integer  "player_id"
    t.string   "ip"
    t.string   "device_udid"
    t.string   "platform"
    t.string   "device_model"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "player_quests", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "claimed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "platform"
    t.string   "device_model"
    t.string   "mobile_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
