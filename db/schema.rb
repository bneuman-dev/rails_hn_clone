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

ActiveRecord::Schema.define(version: 20140217194627) do

  create_table "comment_votes", force: true do |t|
    t.integer  "comment_id"
    t.integer  "voter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment_votes", ["comment_id"], name: "index_comment_votes_on_comment_id"
  add_index "comment_votes", ["voter_id"], name: "index_comment_votes_on_voter_id"

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "author_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["author_id"], name: "index_comments_on_author_id"
  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "post_votes", force: true do |t|
    t.integer  "post_id"
    t.integer  "voter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_votes", ["post_id"], name: "index_post_votes_on_post_id"
  add_index "post_votes", ["voter_id"], name: "index_post_votes_on_voter_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["creator_id"], name: "index_posts_on_creator_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
