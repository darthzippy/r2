# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080718143505) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "footprints"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", :force => true do |t|
    t.integer  "event_id",          :limit => 11
    t.integer  "speaker_id",        :limit => 11
    t.boolean  "original"
    t.boolean  "record_audio"
    t.boolean  "record_video"
    t.boolean  "likeness"
    t.boolean  "distribute_campus"
    t.boolean  "distribute_public"
    t.boolean  "distribute_alumni"
    t.string   "sponsor"
    t.boolean  "sponsor_ok"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "speakers", :force => true do |t|
    t.boolean  "blanket"
    t.datetime "blanket_start"
    t.datetime "blanket_end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "todos", :force => true do |t|
    t.integer  "event_id",       :limit => 11
    t.integer  "user_id",        :limit => 11
    t.string   "action"
    t.datetime "due"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "complete",                     :default => false
    t.datetime "completed_date"
    t.string   "completed_by"
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
