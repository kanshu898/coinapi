class CreateIcos < ActiveRecord::Migration[5.2]
  def change
    create_table "icos", primary_key: "coin_symbol", id: :string, limit: 100, force: :cascade do |t|
      t.string "name", limit: 200, null: false
      t.string "description", limit: 1000
      t.string "image_url", limit: 500
      t.string "web_url", limit: 500
      t.datetime "start_time"
      t.datetime "end_time"
      t.string "source", limit: 100
      t.string "external_profile_url", limit: 100
    end
  end
end
