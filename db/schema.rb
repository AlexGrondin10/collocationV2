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

ActiveRecord::Schema.define(version: 2018_09_24_233248) do

  create_table "assets", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.date "purchase_date"
    t.string "paid_by"
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_assets_on_room_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collocations", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "zip_code_string"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.boolean "done"
    t.integer "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["list_id"], name: "index_items_on_list_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "name"
    t.integer "collocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collocation_id"], name: "index_lists_on_collocation_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "collocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collocation_id"], name: "index_rooms_on_collocation_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "amount"
    t.string "name"
    t.date "due_date"
    t.integer "user_id"
    t.integer "categorie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categorie_id"], name: "index_transactions_on_categorie_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "surname"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.string "profil_picture"
    t.integer "personal_balance"
    t.date "birth_date"
    t.integer "collocation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collocation_id"], name: "index_users_on_collocation_id"
  end

end
