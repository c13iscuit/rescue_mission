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

ActiveRecord::Schema.define(version: 20140617141329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "description", null: false
    t.integer  "post_id",     null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title",       null: false
    t.text     "description", null: false
    t.integer  "user_id",     null: false
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "upvote_pairs", force: true do |t|
    t.integer "user_id",               null: false
    t.integer "upvote_id",             null: false
    t.integer "vote",      default: 0, null: false
  end

  create_table "upvotes", force: true do |t|
    t.integer "user_id",                    null: false
    t.integer "upvotable_id",               null: false
    t.string  "upvotable_type",             null: false
    t.integer "count",          default: 0
  end

  create_table "users", force: true do |t|
    t.string   "username",   null: false
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
