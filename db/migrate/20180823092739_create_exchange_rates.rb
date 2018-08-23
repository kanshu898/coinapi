class CreateExchangeRates < ActiveRecord::Migration[5.2]
  def change
    create_table "exchange_rates", force: :cascade do |t|
      t.string "asset_id", limit: 40, null: false
      t.decimal "rate", null: false
      t.datetime "time", null: false
    end
  end
end
