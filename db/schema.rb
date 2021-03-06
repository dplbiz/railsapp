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

ActiveRecord::Schema.define(version: 20170314160717) do

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code",          limit: 100, null: false
    t.string   "name", null: false
    t.text     "description",   limit: 65535
    t.string   "language_code", limit: 2
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name",         limit: 20, null: false
    t.string   "last_name",         limit: 20, null: false
    t.string   "username",         limit: 30, null: false
    t.string   "password", null: false
    t.string   "email",         limit: 100, null: false
    t.integer  "status",        limit: 1, null: false, unsigned:true, :default => "0"
    t.integer  "created_by", unsigned:true
    t.datetime "created_at", null: false
    t.integer  "updated_by", unsigned:true
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
