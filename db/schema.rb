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

ActiveRecord::Schema.define(version: 2018_11_25_164854) do

  create_table "addresses", force: :cascade do |t|
    t.string "address1", null: false
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.float "lat"
    t.float "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "max_participants"
    t.integer "cost", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "contact_first"
    t.string "contact_last"
    t.string "contact_email"
    t.string "contact_phone"
    t.string "url"
    t.boolean "is_featured", default: false
    t.boolean "is_approved", default: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jwt_blacklist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "body", null: false
    t.integer "view_count", default: 0, null: false
    t.boolean "is_approved", default: false, null: false
    t.boolean "is_featured", default: false, null: false
    t.integer "posts_id"
    t.integer "users_id", null: false
    t.index ["posts_id"], name: "index_posts_on_posts_id"
    t.index ["users_id"], name: "index_posts_on_users_id"
  end

  create_table "resource_types", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "view_count"
    t.integer "resource_type_id"
    t.string "url"
    t.boolean "is_featured", default: false
    t.boolean "is_approved", default: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_type_id"], name: "index_resources_on_resource_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
