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

ActiveRecord::Schema.define(version: 20150522190154) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id",     limit: 4
    t.boolean  "accepted",        limit: 1
    t.integer  "user_id",         limit: 4
    t.integer  "up_vote_count",   limit: 4
    t.integer  "down_vote_count", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.boolean  "is_poll",         limit: 1
    t.text     "details",         limit: 65535
    t.integer  "category_id",     limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "views_count",     limit: 4
    t.integer  "up_vote_count",   limit: 4
    t.integer  "down_vote_count", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "questions_tags", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.integer  "tag_id",      limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",      limit: 255
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "country",       limit: 30
    t.string   "website",       limit: 255
    t.text     "summary",       limit: 65535
    t.string   "avatar",        limit: 255
    t.datetime "registered_at"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users_websites", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "website_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "websites", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
