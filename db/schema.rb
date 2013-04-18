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

ActiveRecord::Schema.define(:version => 20130418025638) do

  create_table "admin_users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "api_key"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hipchat_user_snapshots", :force => true do |t|
    t.integer  "hipchat_user_id"
    t.integer  "last_active"
    t.string   "status"
    t.string   "status_message"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "hipchat_users", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "api_user_id"
    t.string   "api_name"
    t.string   "api_email"
    t.string   "api_mention_name"
    t.string   "api_title"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
