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

ActiveRecord::Schema.define(:version => 20130209013554) do

  create_table "confrences", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "media", :force => true do |t|
    t.string   "mode"
    t.string   "data"
    t.integer  "talk_id"
    t.integer  "confrence_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "height"
    t.integer  "width"
    t.integer  "length"
    t.string   "kind"
    t.integer  "size"
  end

  add_index "media", ["confrence_id"], :name => "index_media_on_confrence_id"
  add_index "media", ["talk_id"], :name => "index_media_on_talk_id"

  create_table "presenters", :force => true do |t|
    t.string   "name"
    t.string   "handle"
    t.string   "email"
    t.string   "fbook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "url"
    t.string   "skype"
    t.string   "aim"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "presenters_talks", :force => true do |t|
    t.integer "presenter_id"
    t.integer "talk_id"
  end

  add_index "presenters_talks", ["presenter_id", "talk_id"], :name => "index_presenters_talks_on_presenter_id_and_talk_id"
  add_index "presenters_talks", ["talk_id", "presenter_id"], :name => "index_presenters_talks_on_talk_id_and_presenter_id"

  create_table "talks", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
