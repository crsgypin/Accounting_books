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

ActiveRecord::Schema.define(version: 20150612131007) do

  create_table "accounting_books", force: :cascade do |t|
    t.date     "consume_date"
    t.text     "description"
    t.float    "cost"
    t.integer  "main_class_id"
    t.integer  "subclass_id"
    t.integer  "third_class_id"
    t.integer  "consume_way_id"
    t.text     "note"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "consume_ways", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_classes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subclasses", force: :cascade do |t|
    t.string   "name"
    t.integer  "main_class_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "third_classes", force: :cascade do |t|
    t.string   "name"
    t.integer  "subclass_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
