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

ActiveRecord::Schema.define(version: 20180531025231) do

  create_table "careers", force: :cascade do |t|
    t.string "post"
    t.date "started_at"
    t.date "ended_at"
    t.boolean "completed"
    t.integer "politic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "declared_goods", force: :cascade do |t|
    t.string "description"
    t.float "value"
    t.integer "politic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "judicial_processes", force: :cascade do |t|
    t.string "description"
    t.boolean "doomed"
    t.integer "politic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "politics", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "state"
    t.string "city"
    t.string "part"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "description"
    t.string "completed"
    t.integer "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.string "description"
    t.string "kind"
    t.integer "politic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
