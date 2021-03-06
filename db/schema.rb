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

ActiveRecord::Schema.define(:version => 20140319230511) do

  create_table "klasses", :force => true do |t|
    t.string   "name"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.integer  "semester_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "grade"
  end

  create_table "klasses_students", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "student_id"
  end

  create_table "semesters", :force => true do |t|
    t.integer  "year"
    t.string   "term"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.integer  "class_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.integer  "class_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
