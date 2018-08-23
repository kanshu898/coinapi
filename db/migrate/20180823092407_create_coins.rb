class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table "coins", force: :cascade do |t|
      t.string "symbol", limit: 20, null: false
      t.string "name", limit: 100
      t.string "contact_name_primary", limit: 100
      t.string "contact_email_primary", limit: 100
      t.string "contact_name_secondary", limit: 100
      t.string "contact_email_secondary", limit: 100
      t.string "website_url", limit: 1000
      t.string "youtube_url", limit: 1000
      t.string "whitepaper_url", limit: 1000
      t.string "github_url", limit: 1000
      t.integer "github_stars_count"
      t.integer "github_commit_count"
      t.string "reddit_url", limit: 1000
      t.integer "reddit_count"
      t.string "telegram_handle", limit: 100
      t.integer "telegram_count"
      t.string "twitter_handle", limit: 100
      t.integer "twitter_count"
      t.string "facebook_url", limit: 1000
      t.integer "facebook_count"
      t.string "blockchain_type", limit: 100
      t.string "proof_type", limit: 100
      t.string "algorithm", limit: 100
      t.decimal "supply_circulating"
      t.decimal "supply_total"
      t.decimal "market_cap"
      t.decimal "high_all_time"
      t.decimal "low_all_time"
      t.decimal "return_from_ico"
      t.string "description", limit: 10000
      t.string "location", limit: 100
      t.string "category", limit: 200
    end
  end
end
