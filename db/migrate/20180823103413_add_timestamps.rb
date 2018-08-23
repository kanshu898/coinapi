class AddTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :assets, null: true
    add_timestamps :coins, null: true
    add_timestamps :exchange_rates, null: true
    add_timestamps :exchanges, null: true
    add_timestamps :ico_members, null: true
    add_timestamps :icos, null: true
    add_timestamps :symbols, null: true

    # Backfill missing data with a really old date
    time = Time.zone.parse('2000-01-01 00:00:00')
    ["assets", "coins", "exchanges", "exchange_rates", "ico_members", "icos", "symbols"].each do |table_name|
      update "UPDATE #{table_name} SET created_at = '#{time}'"
      update "UPDATE #{table_name} SET updated_at = '#{time}'"

      # Restore NOT NULL constraints to be in line with the Rails default
      change_column_null table_name.to_sym, :created_at, false
      change_column_null table_name.to_sym, :updated_at, false
    end
  end
end
