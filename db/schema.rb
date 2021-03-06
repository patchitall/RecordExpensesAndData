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

ActiveRecord::Schema.define(version: 20160229153142) do

  create_table "expenses", force: :cascade do |t|
    t.integer  "trip_id"
    t.string   "expense_name"
    t.float    "expense_amount"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "expense_receipt_file_name"
    t.string   "expense_receipt_content_type"
    t.integer  "expense_receipt_file_size"
    t.datetime "expense_receipt_updated_at"
    t.date     "expense_date"
    t.integer  "user_id"
  end

  create_table "legs", force: :cascade do |t|
    t.integer  "trip_id"
    t.float    "start_mileage"
    t.float    "end_mileage"
    t.integer  "non_travel_time_in_minutes"
    t.float    "non_work_miles"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "destination"
    t.date     "date"
    t.boolean  "next_day"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "user_id"
    t.integer  "time_zone"
  end

  create_table "reports", force: :cascade do |t|
    t.date     "report_start"
    t.date     "report_end"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "trips", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "destination"
    t.string   "trip_label"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "employeeidentifier"
    t.string   "organization"
    t.string   "supervisor"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
