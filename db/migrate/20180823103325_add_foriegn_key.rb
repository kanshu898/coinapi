class AddForiegnKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key "ico_members", "icos", column: "coin_symbol", primary_key: "coin_symbol", name: "ico_members_coin_symbol_fkey", on_delete: :cascade
  end
end
