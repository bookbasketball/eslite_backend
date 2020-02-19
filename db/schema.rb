ActiveRecord::Schema.define(version: 2020_02_19_103721) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "list_price"
    t.decimal "sale_price"
    t.integer "sku"
    t.text "description"
    t.string "image"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
