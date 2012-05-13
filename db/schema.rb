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

ActiveRecord::Schema.define(:version => 20120513085320) do

  create_table "child_dailies", :force => true do |t|
    t.integer  "child_id"
    t.datetime "date"
    t.text     "individual_message"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "tops_form_id"
  end

  add_index "child_dailies", ["child_id"], :name => "index_child_dailies_on_child_id"
  add_index "child_dailies", ["tops_form_id"], :name => "index_child_dailies_on_tops_form_id"

  create_table "children", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "mom_first"
    t.string   "dad_first"
    t.string   "email_mom"
    t.string   "email_dad"
    t.datetime "icec_start"
    t.datetime "icec_end"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "daily_notes", :force => true do |t|
    t.datetime "date"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "email_messages", :force => true do |t|
    t.datetime "date"
    t.integer  "child_id"
    t.integer  "daily_note_id"
    t.integer  "child_daily_id"
    t.string   "to_address"
    t.datetime "sent_time",      :default => '9999-12-31 23:59:59'
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "email_messages", ["child_daily_id"], :name => "index_email_messages_on_child_daily_id"
  add_index "email_messages", ["child_id"], :name => "index_email_messages_on_child_id"
  add_index "email_messages", ["daily_note_id"], :name => "index_email_messages_on_daily_note_id"

  create_table "tops_forms", :force => true do |t|
    t.integer  "child_daily_id"
    t.integer  "tops_question_id"
    t.boolean  "checked"
    t.integer  "qualifier_value_id"
    t.text     "note"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "tops_forms", ["tops_question_id"], :name => "index_tops_forms_on_tops_question_id"

  create_table "tops_qualifiers", :force => true do |t|
    t.integer  "type_id"
    t.integer  "value_id"
    t.string   "value_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tops_questions", :force => true do |t|
    t.text     "description"
    t.integer  "qualifier_type_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
