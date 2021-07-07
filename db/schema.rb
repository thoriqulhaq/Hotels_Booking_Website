ActiveRecord::Schema.define(version: 2021_07_07_203112) do

  create_table "hotels", force: :cascade do |t|
    t.string "room_num"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_num"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
