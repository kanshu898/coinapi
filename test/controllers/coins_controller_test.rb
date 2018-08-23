require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url, as: :json
    assert_response :success
  end

  test "should create coin" do
    assert_difference('Coin.count') do
      post coins_url, params: { coin: { algorithm: @coin.algorithm, blockchain_type: @coin.blockchain_type, category: @coin.category, contact_email_primary: @coin.contact_email_primary, contact_email_secondary: @coin.contact_email_secondary, contact_name_primary: @coin.contact_name_primary, contact_name_secondary: @coin.contact_name_secondary, description: @coin.description, facebook_count: @coin.facebook_count, facebook_url: @coin.facebook_url, github_commit_count: @coin.github_commit_count, github_stars_count: @coin.github_stars_count, github_url: @coin.github_url, high_all_time: @coin.high_all_time, location: @coin.location, low_all_time: @coin.low_all_time, market_cap: @coin.market_cap, name: @coin.name, proof_type: @coin.proof_type, reddit_count: @coin.reddit_count, reddit_url: @coin.reddit_url, return_from_ico: @coin.return_from_ico, supply_circulating: @coin.supply_circulating, supply_total: @coin.supply_total, symbol: @coin.symbol, telegram_count: @coin.telegram_count, telegram_handle: @coin.telegram_handle, twitter_count: @coin.twitter_count, twitter_handle: @coin.twitter_handle, website_url: @coin.website_url, whitepaper_url: @coin.whitepaper_url, youtube_url: @coin.youtube_url } }, as: :json
    end

    assert_response 201
  end

  test "should show coin" do
    get coin_url(@coin), as: :json
    assert_response :success
  end

  test "should update coin" do
    patch coin_url(@coin), params: { coin: { algorithm: @coin.algorithm, blockchain_type: @coin.blockchain_type, category: @coin.category, contact_email_primary: @coin.contact_email_primary, contact_email_secondary: @coin.contact_email_secondary, contact_name_primary: @coin.contact_name_primary, contact_name_secondary: @coin.contact_name_secondary, description: @coin.description, facebook_count: @coin.facebook_count, facebook_url: @coin.facebook_url, github_commit_count: @coin.github_commit_count, github_stars_count: @coin.github_stars_count, github_url: @coin.github_url, high_all_time: @coin.high_all_time, location: @coin.location, low_all_time: @coin.low_all_time, market_cap: @coin.market_cap, name: @coin.name, proof_type: @coin.proof_type, reddit_count: @coin.reddit_count, reddit_url: @coin.reddit_url, return_from_ico: @coin.return_from_ico, supply_circulating: @coin.supply_circulating, supply_total: @coin.supply_total, symbol: @coin.symbol, telegram_count: @coin.telegram_count, telegram_handle: @coin.telegram_handle, twitter_count: @coin.twitter_count, twitter_handle: @coin.twitter_handle, website_url: @coin.website_url, whitepaper_url: @coin.whitepaper_url, youtube_url: @coin.youtube_url } }, as: :json
    assert_response 200
  end

  test "should destroy coin" do
    assert_difference('Coin.count', -1) do
      delete coin_url(@coin), as: :json
    end

    assert_response 204
  end
end
