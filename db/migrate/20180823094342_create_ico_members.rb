class CreateIcoMembers < ActiveRecord::Migration[5.2]
  def change
    create_table "ico_members", force: :cascade do |t|
      t.string "coin_symbol", limit: 100
      t.string "name", limit: 200, null: false
      t.string "designation", limit: 1000
      t.string "image_url", limit: 500
      t.string "social_linkedin", limit: 500
    end
  end
end
