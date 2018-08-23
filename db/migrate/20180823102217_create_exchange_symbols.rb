class CreateExchangeSymbols < ActiveRecord::Migration[5.2]
  def change
    create_table "symbols", primary_key: "symbol_id", id: :string, limit: 40, force: :cascade do |t|
      t.string "exchange_id", limit: 40, null: false
      t.string "symbol_type", limit: 40, null: false
      t.string "asset_id_base", limit: 40, null: false
      t.string "asset_id_quote", limit: 40, null: false
    end
  end
end
