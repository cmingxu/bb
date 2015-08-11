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

ActiveRecord::Schema.define(version: 20150811071333) do

  create_table "alliance_memberships", force: :cascade do |t|
    t.integer  "alliance_id", limit: 4
    t.string   "state",       limit: 255
    t.integer  "player_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "alliances", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "member_count", limit: 4
    t.integer  "created_by",   limit: 4
    t.string   "state",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string   "building_type",   limit: 255
    t.integer  "level",           limit: 4
    t.integer  "city_id",         limit: 4
    t.integer  "x",               limit: 4
    t.integer  "y",               limit: 4
    t.integer  "player_id",       limit: 4
    t.datetime "last_updated_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer  "player_id",  limit: 4
    t.integer  "x",          limit: 4
    t.integer  "y",          limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "login_logs", force: :cascade do |t|
    t.integer  "player_id",    limit: 4
    t.string   "ip",           limit: 255
    t.string   "device_udid",  limit: 255
    t.string   "platform",     limit: 255
    t.string   "device_model", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "moderators", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",                  limit: 255
  end

  add_index "moderators", ["email"], name: "index_moderators_on_email", unique: true, using: :btree
  add_index "moderators", ["reset_password_token"], name: "index_moderators_on_reset_password_token", unique: true, using: :btree

  create_table "player_quests", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "claimed_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "platform",     limit: 255
    t.string   "device_model", limit: 255
    t.string   "mobile_id",    limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles",                  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
