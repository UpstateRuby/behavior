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

ActiveRecord::Schema.define(version: 20170301152936) do

  create_table "bars", force: :cascade do |t|
    t.string  "name"
    t.string  "color"
    t.integer "points"
    t.boolean "default", default: false
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clips", force: :cascade do |t|
    t.integer "child_id"
    t.integer "points"
    t.index ["child_id"], name: "index_clips_on_child_id"
  end

  create_table "reward_claims", force: :cascade do |t|
    t.integer  "child_id"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_reward_claims_on_child_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string  "name"
    t.integer "cost"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "child_id"
    t.integer "points"
    t.date    "recorded_on"
    t.index ["child_id"], name: "index_scores_on_child_id"
    t.index ["recorded_on"], name: "index_scores_on_recorded_on"
  end

end
