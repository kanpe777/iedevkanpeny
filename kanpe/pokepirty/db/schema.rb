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

ActiveRecord::Schema.define(:version => 20120831074903) do

  create_table "pirties", :force => true do |t|
    t.string   "name"
    t.integer  "battlecount"
    t.integer  "victorycount"
    t.string   "battleform"
    t.string   "rule"
    t.string   "miracleshooter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "pokeparties", :force => true do |t|
    t.string   "party"
    t.integer  "battlec"
    t.integer  "winc"
    t.string   "battletype"
    t.string   "rule"
    t.string   "shooter"
    t.text     "strategic"
    t.string   "p1name"
    t.string   "p1abilites"
    t.string   "p1personality"
    t.string   "p1belonging"
    t.string   "p1role"
    t.string   "p1trick1"
    t.string   "p1trick2"
    t.string   "p1trick3"
    t.string   "p1trick4"
    t.integer  "p1evh"
    t.integer  "p1eva"
    t.integer  "p1evb"
    t.integer  "p1evc"
    t.integer  "p1evd"
    t.integer  "p1evs"
    t.text     "p1detail"
    t.string   "p2name"
    t.string   "p2abilites"
    t.string   "p2personality"
    t.string   "p2belonging"
    t.string   "p2role"
    t.string   "p2trick1"
    t.string   "p2trick2"
    t.string   "p2trick3"
    t.string   "p2trick4"
    t.integer  "p2evh"
    t.integer  "p2eva"
    t.integer  "p2evb"
    t.integer  "p2evc"
    t.integer  "p2evd"
    t.integer  "p2evs"
    t.text     "p2detail"
    t.string   "p3name"
    t.string   "p3abilites"
    t.string   "p3personality"
    t.string   "p3belonging"
    t.string   "p3role"
    t.string   "p3trick1"
    t.string   "p3trick2"
    t.string   "p3trick3"
    t.string   "p3trick4"
    t.integer  "p3evh"
    t.integer  "p3eva"
    t.integer  "p3evb"
    t.integer  "p3evc"
    t.integer  "p3evd"
    t.integer  "p3evs"
    t.text     "p3detail"
    t.string   "p4name"
    t.string   "p4abilites"
    t.string   "p4personality"
    t.string   "p4belonging"
    t.string   "p4role"
    t.string   "p4trick1"
    t.string   "p4trick2"
    t.string   "p4trick3"
    t.string   "p4trick4"
    t.integer  "p4evh"
    t.integer  "p4eva"
    t.integer  "p4evb"
    t.integer  "p4evc"
    t.integer  "p4evd"
    t.integer  "p4evs"
    t.text     "p4detail"
    t.string   "p5name"
    t.string   "p5abilites"
    t.string   "p5personality"
    t.string   "p5belonging"
    t.string   "p5role"
    t.string   "p5trick1"
    t.string   "p5trick2"
    t.string   "p5trick3"
    t.string   "p5trick4"
    t.integer  "p5evh"
    t.integer  "p5eva"
    t.integer  "p5evb"
    t.integer  "p5evc"
    t.integer  "p5evd"
    t.integer  "p5evs"
    t.text     "p5detail"
    t.string   "p6name"
    t.string   "p6abilites"
    t.string   "p6personality"
    t.string   "p6belonging"
    t.string   "p6role"
    t.string   "p6trick1"
    t.string   "p6trick2"
    t.string   "p6trick3"
    t.string   "p6trick4"
    t.integer  "p6evh"
    t.integer  "p6eva"
    t.integer  "p6evb"
    t.integer  "p6evc"
    t.integer  "p6evd"
    t.integer  "p6evs"
    t.text     "p6detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skilldbs", :force => true do |t|
    t.string   "skillname"
    t.string   "skilltype"
    t.integer  "skillpower"
    t.integer  "skillhit"
    t.integer  "skillpp"
    t.string   "skillkind"
    t.string   "skillscope"
    t.text     "skilleffect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "structures", :force => true do |t|
    t.integer  "pirty_id"
    t.integer  "poke_id"
    t.string   "characteristic"
    t.string   "belonging"
    t.string   "skill1"
    t.string   "skill2"
    t.string   "skill3"
    t.string   "skill4"
    t.integer  "efforth"
    t.integer  "efforta"
    t.integer  "effortb"
    t.integer  "effortc"
    t.integer  "effortd"
    t.integer  "efforts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
