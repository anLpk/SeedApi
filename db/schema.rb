ActiveRecord::Schema.define(version: 2014_10_25_152200) do

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "votes", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
