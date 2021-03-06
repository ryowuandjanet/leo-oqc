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

ActiveRecord::Schema.define(version: 2018_10_21_004443) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oqcitems", force: :cascade do |t|
    t.string "inspector"
    t.integer "oqclist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oqclist_id"], name: "index_oqcitems_on_oqclist_id"
  end

  create_table "oqclists", force: :cascade do |t|
    t.string "lotno"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_oqclists_on_customer_id"
    t.index ["product_id"], name: "index_oqclists_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "model"
    t.string "partno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
