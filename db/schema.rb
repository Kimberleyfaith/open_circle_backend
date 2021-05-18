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

ActiveRecord::Schema.define(version: 2021_05_18_005018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chatrooms", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circles", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circles_users", id: false, force: :cascade do |t|
    t.integer "circle_id"
    t.integer "user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "chatroom_id"
    t.integer "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.text "image", array: true
    t.text "content"
    t.text "likes", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "circle_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password_digest"
    t.text "name"
    t.text "profile_image"
    t.text "cover_image"
    t.text "bio"
    t.date "birthday"
    t.text "location"
    t.text "placeholder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
