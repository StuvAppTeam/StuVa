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

ActiveRecord::Schema.define(version: 20150402121359) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "path",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "offer_apartments", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "description",    limit: 255
    t.float    "totalPrice",     limit: 24
    t.integer  "image_id",       limit: 4
    t.string   "street",         limit: 255
    t.string   "city",           limit: 255
    t.integer  "zipcode",        limit: 4
    t.integer  "user_id",        limit: 4
    t.integer  "size",           limit: 4
    t.float    "rent",           limit: 24
    t.float    "additionalCost", limit: 24
    t.string   "phase",          limit: 255
    t.float    "deposit",        limit: 24
    t.string   "type",           limit: 255
    t.date     "moveIn"
    t.boolean  "furnished",      limit: 1
    t.boolean  "internet",       limit: 1
    t.string   "other",          limit: 255
    t.string   "parking",        limit: 255
    t.integer  "rooms",          limit: 4
    t.boolean  "smoking",        limit: 1
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "offer_blackboards", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.float    "totalPrice",  limit: 24
    t.integer  "image_id",    limit: 4
    t.string   "street",      limit: 255
    t.string   "city",        limit: 255
    t.integer  "zipcode",     limit: 4
    t.integer  "user_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.boolean  "condition",   limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "request_apartments", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.float    "totalPrice",  limit: 24
    t.integer  "user_id",     limit: 4
    t.boolean  "furnished",   limit: 1
    t.string   "type",        limit: 255
    t.integer  "size",        limit: 4
    t.string   "phase",       limit: 255
    t.string   "city",        limit: 255
    t.integer  "zipcode",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "request_blackboards", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.float    "totalPrice",  limit: 24
    t.integer  "user_id",     limit: 4
    t.integer  "category_id", limit: 4
    t.boolean  "condition",   limit: 1
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "gender",                 limit: 255
    t.string   "firstName",              limit: 255
    t.string   "lastName",               limit: 255
    t.string   "userName",               limit: 255
    t.date     "birthdate"
    t.string   "phone",                  limit: 255
    t.string   "type",                   limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
