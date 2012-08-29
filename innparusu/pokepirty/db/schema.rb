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

ActiveRecord::Schema.define(:version => 20120828192016) do

  create_table "pokedbs", :force => true do |t|
    t.integer  "number"
    t.string   "image_url"
    t.string   "name"
    t.string   "type1"
    t.string   "type2"
    t.string   "characteristic1"
    t.string   "characteristic2"
    t.string   "characteristic3"
    t.integer  "baseh"
    t.integer  "basea"
    t.integer  "baseb"
    t.integer  "basec"
    t.integer  "based"
    t.integer  "bases"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end