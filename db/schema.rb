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

ActiveRecord::Schema.define(version: 2019_11_12_103214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appoinments", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.bigint "user_id"
    t.bigint "petplace_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petplace_id"], name: "index_appoinments_on_petplace_id"
    t.index ["user_id"], name: "index_appoinments_on_user_id"
  end

  create_table "petplaces", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.string "address"
    t.integer "price"
    t.string "images"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_petplaces_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "description"
    t.string "images"
    t.bigint "appoinment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appoinment_id"], name: "index_reviews_on_appoinment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "pet_name"
    t.string "pet_type"
    t.string "role"
    t.string "user_image"
    t.string "pet_image"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
