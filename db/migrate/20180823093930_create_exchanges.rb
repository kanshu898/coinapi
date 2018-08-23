class CreateExchanges < ActiveRecord::Migration[5.2]
  def change
    create_table "exchanges", primary_key: "exchange_id", id: :string, limit: 40, force: :cascade do |t|
      t.string "website", limit: 100, null: false
      t.string "name", limit: 100
    end
  end
end
