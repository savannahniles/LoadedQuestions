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

ActiveRecord::Schema.define(version: 20140131202233) do

  create_table "answers", force: true do |t|
    t.string   "content"
    t.integer  "author"
    t.integer  "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
  end

  add_index "answers", ["author"], name: "index_answers_on_author"
  add_index "answers", ["question"], name: "index_answers_on_question"

  create_table "questions", force: true do |t|
    t.string   "content"
    t.integer  "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["author"], name: "index_questions_on_author"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
