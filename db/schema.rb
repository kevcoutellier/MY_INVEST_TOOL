# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_29_105732) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_accounts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bank_accounts_on_user_id"
  end

  create_table "cryptos", force: :cascade do |t|
    t.string "name"
    t.string "wallet_address"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cryptos_on_user_id"
  end

  create_table "custom_invests", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "quantity"
    t.integer "unity_cost"
    t.integer "actual_cost"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_custom_invests_on_user_id"
  end

  create_table "liabilities", force: :cascade do |t|
    t.string "loan_name"
    t.string "type"
    t.integer "amount"
    t.integer "monthly_payment"
    t.integer "interest_rate"
    t.date "start_date"
    t.integer "duration"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_liabilities_on_user_id"
  end

  create_table "real_estates", force: :cascade do |t|
    t.string "address"
    t.string "description"
    t.string "type"
    t.string "category"
    t.integer "purchase_price"
    t.integer "floor_space"
    t.date "year_of_construction"
    t.date "date_of_purchase"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_real_estates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bank_accounts", "users"
  add_foreign_key "cryptos", "users"
  add_foreign_key "custom_invests", "users"
  add_foreign_key "liabilities", "users"
  add_foreign_key "real_estates", "users"
end
