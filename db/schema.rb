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

ActiveRecord::Schema.define(:version => 20091229162428) do

  create_table "addresses", :id => false, :force => true do |t|
    t.string   "id",             :limit => 36,  :null => false
    t.string   "user_detail_id", :limit => 36,  :null => false
    t.string   "address1",                      :null => false
    t.string   "address2"
    t.string   "city",           :limit => 150, :null => false
    t.string   "state",          :limit => 150, :null => false
    t.string   "country",        :limit => 150, :null => false
    t.string   "zip_code",       :limit => 50,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address1"], :name => "index_addresses_on_address1"
  add_index "addresses", ["city"], :name => "index_addresses_on_city"
  add_index "addresses", ["country"], :name => "index_addresses_on_country"
  add_index "addresses", ["state"], :name => "index_addresses_on_state"
  add_index "addresses", ["user_detail_id"], :name => "index_addresses_on_user_detail_id"
  add_index "addresses", ["zip_code"], :name => "index_addresses_on_zip_code"

  create_table "designations", :force => true do |t|
    t.string   "name",        :limit => 100, :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "designations", ["name"], :name => "index_designations_on_name"

  create_table "phones", :id => false, :force => true do |t|
    t.string   "id",             :limit => 36,  :null => false
    t.string   "user_detail_id", :limit => 36,  :null => false
    t.string   "mobile",         :limit => 100, :null => false
    t.string   "home",           :limit => 100
    t.string   "fax",            :limit => 100
    t.string   "office",         :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phones", ["fax"], :name => "index_phones_on_fax"
  add_index "phones", ["home"], :name => "index_phones_on_home"
  add_index "phones", ["mobile"], :name => "index_phones_on_mobile"
  add_index "phones", ["office"], :name => "index_phones_on_office"
  add_index "phones", ["user_detail_id"], :name => "index_phones_on_user_detail_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "time_sheets", :force => true do |t|
    t.string   "user_detail_id",      :limit => 36,                    :null => false
    t.datetime "in_time"
    t.datetime "out_time"
    t.boolean  "is_late",                           :default => false
    t.boolean  "manual_in_time",                    :default => false
    t.text     "manual_in_time_note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "time_sheets", ["user_detail_id"], :name => "index_time_sheets_on_user_detail_id"

  create_table "user_details", :id => false, :force => true do |t|
    t.string   "id",                :limit => 36, :null => false
    t.string   "user_id",           :limit => 36, :null => false
    t.integer  "employee_id",                     :null => false
    t.integer  "designation_id",                  :null => false
    t.string   "first_name",        :limit => 75, :null => false
    t.string   "middle_name",       :limit => 75
    t.string   "last_name",         :limit => 75, :null => false
    t.date     "date_of_joining",                 :null => false
    t.date     "date_of_birth",                   :null => false
    t.string   "gender"
    t.string   "alternative_email"
    t.string   "nationality",       :limit => 75
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_details", ["alternative_email"], :name => "index_user_details_on_alternative_email"
  add_index "user_details", ["designation_id"], :name => "index_user_details_on_designation_id"
  add_index "user_details", ["employee_id"], :name => "index_user_details_on_employee_id"
  add_index "user_details", ["first_name"], :name => "index_user_details_on_first_name"
  add_index "user_details", ["last_name"], :name => "index_user_details_on_last_name"
  add_index "user_details", ["user_id"], :name => "index_user_details_on_user_id"

  create_table "users", :id => false, :force => true do |t|
    t.string   "id",                  :limit => 36,                    :null => false
    t.string   "login",                                                :null => false
    t.string   "email",                                                :null => false
    t.string   "crypted_password",                                     :null => false
    t.string   "password_salt",                                        :null => false
    t.string   "persistence_token",                                    :null => false
    t.string   "single_access_token",                                  :null => false
    t.string   "perishable_token",                                     :null => false
    t.boolean  "is_admin",                          :default => false
    t.integer  "login_count",                       :default => 0,     :null => false
    t.integer  "failed_login_count",                :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "voided",                            :default => false
    t.text     "voided_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["login"], :name => "index_users_on_login"

end
