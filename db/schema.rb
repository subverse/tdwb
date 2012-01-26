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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120126135603) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], :name => "index_categories_on_name", :unique => true

  create_table "grammars", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grammars", ["name"], :name => "index_grammars_on_name", :unique => true

  create_table "linkcategories", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "linkcategories", ["name"], :name => "index_linkcategories_on_name", :unique => true

  create_table "sources", :force => true do |t|
    t.string   "name",                    :null => false
    t.string   "code",       :limit => 5, :null => false
    t.string   "web"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sources", ["code"], :name => "index_sources_on_code", :unique => true
  add_index "sources", ["name"], :name => "index_sources_on_name", :unique => true
  add_index "sources", ["web"], :name => "index_sources_on_web", :unique => true

end
