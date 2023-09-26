# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_09_20_102928) do

  create_table "entry_points", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parking_slots", force: :cascade do |t|
    t.string "number"
    t.float "latitude"
    t.float "longitude"
    t.integer "entry_point_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_point_id"], name: "index_parking_slots_on_entry_point_id"
  end

  create_table "slot_bookings", force: :cascade do |t|
    t.string "entrance_number"
    t.string "vehicle_registration_number"
    t.string "entry_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "slot"
  end

  add_foreign_key "parking_slots", "entry_points"
end
