require 'test_helper'

class ExchangeRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exchange_rate = exchange_rates(:one)
  end

  test "should get index" do
    get exchange_rates_url, as: :json
    assert_response :success
  end

  test "should create exchange_rate" do
    assert_difference('ExchangeRate.count') do
      post exchange_rates_url, params: { exchange_rate: { asset_id: @exchange_rate.asset_id, rate: @exchange_rate.rate, time: @exchange_rate.time } }, as: :json
    end

    assert_response 201
  end

  test "should show exchange_rate" do
    get exchange_rate_url(@exchange_rate), as: :json
    assert_response :success
  end

  test "should update exchange_rate" do
    patch exchange_rate_url(@exchange_rate), params: { exchange_rate: { asset_id: @exchange_rate.asset_id, rate: @exchange_rate.rate, time: @exchange_rate.time } }, as: :json
    assert_response 200
  end

  test "should destroy exchange_rate" do
    assert_difference('ExchangeRate.count', -1) do
      delete exchange_rate_url(@exchange_rate), as: :json
    end

    assert_response 204
  end
end
