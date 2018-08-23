class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table "assets", primary_key: "asset_id", id: :string, limit: 40, force: :cascade do |t|
      t.string "name", limit: 40, null: false
      t.integer "type_is_crypto"
      t.string "source", limit: 40, null: false
    end
  end
end
