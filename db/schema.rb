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

ActiveRecord::Schema.define(:version => 20110405210850) do

  create_table "analytes", :force => true do |t|
    t.string   "name"
    t.integer  "analytical_method_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "analytical_methods", :force => true do |t|
    t.string   "name"
    t.integer  "instrument_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "analytical_standards", :force => true do |t|
    t.string   "analytical_method"
    t.string   "user"
    t.date     "preparation_date"
    t.decimal  "volume",            :precision => 12, :scale => 4
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_counts", :force => true do |t|
    t.integer  "calibration_level_id"
    t.decimal  "area",                 :precision => 12, :scale => 4
    t.string   "analyte"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calibration_levels", :force => true do |t|
    t.integer  "run_log_id"
    t.decimal  "standard_conc", :precision => 12, :scale => 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chromatographic_columns", :force => true do |t|
    t.string   "name"
    t.integer  "instrument_id"
    t.integer  "analytical_method_id"
    t.string   "brand"
    t.text     "description"
    t.string   "serial"
    t.date     "received"
    t.text     "notes"
    t.boolean  "decomissioned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chromatographic_columns", ["name"], :name => "index_chromatographic_columns_on_name", :unique => true

  create_table "instruments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instruments", ["name"], :name => "index_instruments_on_name", :unique => true

  create_table "maintenance_events", :force => true do |t|
    t.integer  "instrument_id"
    t.date     "date"
    t.text     "problem"
    t.text     "maintenance_performed"
    t.integer  "user_id"
    t.text     "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "run_logs", :force => true do |t|
    t.integer  "instrument_id"
    t.string   "analytical_method"
    t.string   "chromatographic_column"
    t.date     "run_date"
    t.decimal  "pressure",               :precision => 12, :scale => 4
    t.decimal  "flow_rate",              :precision => 12, :scale => 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standard_amounts", :force => true do |t|
    t.string   "name"
    t.decimal  "amount",                 :precision => 12, :scale => 4
    t.integer  "analytical_standard_id"
    t.string   "batch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                             :default => "", :null => false
    t.string   "encrypted_password", :limit => 128, :default => "", :null => false
    t.string   "password_salt",                     :default => "", :null => false
    t.string   "name"
    t.boolean  "terms_of_service"
    t.integer  "sign_in_count",                     :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
