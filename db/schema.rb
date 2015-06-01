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

ActiveRecord::Schema.define(version: 18) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "surname",          limit: 255
    t.string   "email",            limit: 255
    t.string   "crypted_password", limit: 255
    t.string   "role",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "user_id",    limit: 255
    t.string   "comment",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "post_id",    limit: 4
  end

  create_table "nutrients", id: false, force: :cascade do |t|
    t.string  "name",         limit: 255
    t.string  "group",        limit: 255
    t.string  "protein",      limit: 255
    t.string  "calcium",      limit: 255
    t.string  "sodium",       limit: 255
    t.string  "fiber",        limit: 255
    t.string  "vitamin_c",    limit: 255
    t.string  "potassium",    limit: 255
    t.string  "carbohydrate", limit: 255
    t.string  "sugars",       limit: 255
    t.string  "fat",          limit: 255
    t.string  "water",        limit: 255
    t.string  "calories",     limit: 255
    t.string  "saturated",    limit: 255
    t.string  "monounsat",    limit: 255
    t.string  "polyunsat",    limit: 255
    t.integer "product_id",   limit: 4
  end

  add_index "nutrients", ["product_id"], name: "index_nutrients_on_product_id", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "account_id", limit: 4
    t.string   "category",   limit: 255
    t.string   "image",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink",  limit: 255
    t.integer  "comment_id", limit: 4
    t.integer  "recipe_id",  limit: 4
  end

  add_index "posts", ["recipe_id"], name: "index_posts_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.integer  "post_id",     limit: 4
    t.text     "ingredients", limit: 65535
    t.string   "image",       limit: 255
    t.string   "title",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "permalink",   limit: 255
  end

  create_table "steps", force: :cascade do |t|
    t.integer  "post_id",    limit: 4
    t.text     "step",       limit: 65535
    t.string   "image",      limit: 255
    t.string   "title",      limit: 255
    t.integer  "recipe_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", force: :cascade do |t|
    t.text     "file",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name",     limit: 255
    t.string   "email",         limit: 255
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_id",    limit: 4
    t.boolean  "admin",         limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
