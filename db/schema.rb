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

ActiveRecord::Schema.define(version: 20160910181824) do

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "alias"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_members_on_email", unique: true
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.integer  "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_rooms_on_member_id"
  end

  create_table "rooms_members", force: :cascade do |t|
    t.integer "rooms_id"
    t.integer "members_id"
    t.index ["members_id"], name: "index_rooms_members_on_members_id"
    t.index ["rooms_id"], name: "index_rooms_members_on_rooms_id"
  end

end
