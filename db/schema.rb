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

ActiveRecord::Schema.define(version: 20170420014612) do

  create_table "product_suppliers", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.integer  "supplier_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "description"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "representative_suppliers", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "supplier_id"
    t.integer  "representative_id"
  end

  create_table "representatives", force: :cascade do |t|
    t.string   "name"
    t.string   "occupation"
    t.string   "email"
    t.string   "phone"
    t.string   "cell_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "fantasy_name"
    t.string   "document"
    t.string   "individual_businessman"
    t.string   "site"
    t.string   "email"
    t.string   "phone"
    t.string   "zip_code"
    t.string   "neighborhood"
    t.string   "address"
    t.string   "number"
    t.string   "complement"
    t.string   "state"
    t.string   "city"
    t.string   "principal_activity"
    t.string   "delivery_time"
    t.string   "request_time"
    t.integer  "freight_type"
    t.string   "payment_conditions"
    t.string   "icms"
    t.string   "pis_cofins"
    t.string   "ipi"
    t.string   "last_purchase"
    t.string   "notes"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "document"
    t.string   "phone"
    t.integer  "status"
    t.text     "notes"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
