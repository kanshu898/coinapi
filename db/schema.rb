# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_23_103413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", primary_key: "asset_id", id: :string, limit: 40, force: :cascade do |t|
    t.string "name", limit: 40, null: false
    t.integer "type_is_crypto"
    t.string "source", limit: 40, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exchange_rates", force: :cascade do |t|
    t.string "asset_id", limit: 40, null: false
    t.decimal "rate", null: false
    t.datetime "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exchanges", primary_key: "exchange_id", id: :string, limit: 40, force: :cascade do |t|
    t.string "website", limit: 100, null: false
    t.string "name", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ico_members", force: :cascade do |t|
    t.string "coin_symbol", limit: 100
    t.string "name", limit: 200, null: false
    t.string "designation", limit: 1000
    t.string "image_url", limit: 500
    t.string "social_linkedin", limit: 500
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icos", primary_key: "coin_symbol", id: :string, limit: 100, force: :cascade do |t|
    t.string "name", limit: 200, null: false
    t.string "description", limit: 1000
    t.string "image_url", limit: 500
    t.string "web_url", limit: 500
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "source", limit: 100
    t.string "external_profile_url", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "symbols", primary_key: "symbol_id", id: :string, limit: 40, force: :cascade do |t|
    t.string "exchange_id", limit: 40, null: false
    t.string "symbol_type", limit: 40, null: false
    t.string "asset_id_base", limit: 40, null: false
    t.string "asset_id_quote", limit: 40, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ico_members", "icos", column: "coin_symbol", primary_key: "coin_symbol", name: "ico_members_coin_symbol_fkey", on_delete: :cascade
end
