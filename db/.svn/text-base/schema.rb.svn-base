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

ActiveRecord::Schema.define(:version => 20110325204038) do

  create_table "courses", :force => true do |t|
    t.integer  "department_id"
    t.string   "key"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "key"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "degrees"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.string   "comment",          :limit => 700
    t.integer  "difficulty",                      :default => 0
    t.integer  "smart_review_id"
    t.string   "type",                                           :null => false
    t.integer  "mood",                            :default => 0
    t.integer  "teaching_skill",                  :default => 0
    t.integer  "exams_difficulty",                :default => 0
    t.integer  "helpfulness",                     :default => 0
    t.integer  "usefulness",                      :default => 0
    t.integer  "content",                         :default => 0
    t.integer  "time_spent",                      :default => 0
    t.integer  "recommend",                       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.integer  "course_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "smart_reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",               :null => false
    t.string   "persistence_token"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "single_access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
