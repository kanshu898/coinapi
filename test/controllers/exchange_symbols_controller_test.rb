require 'test_helper'

class ExchangeSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exchange_symbol = exchange_symbols(:one)
  end

  test "should get index" do
    get exchange_symbols_url, as: :json
    assert_response :success
  end

  test "should create exchange_symbol" do
    assert_difference('ExchangeSymbol.count') do
      post exchange_symbols_url, params: { exchange_symbol: { asset_id_base: @exchange_symbol.asset_id_base, asset_id_quote: @exchange_symbol.asset_id_quote, exchange_id: @exchange_symbol.exchange_id, symbol_type: @exchange_symbol.symbol_type } }, as: :json
    end

    assert_response 201
  end

  test "should show exchange_symbol" do
    get exchange_symbol_url(@exchange_symbol), as: :json
    assert_response :success
  end

  test "should update exchange_symbol" do
    patch exchange_symbol_url(@exchange_symbol), params: { exchange_symbol: { asset_id_base: @exchange_symbol.asset_id_base, asset_id_quote: @exchange_symbol.asset_id_quote, exchange_id: @exchange_symbol.exchange_id, symbol_type: @exchange_symbol.symbol_type } }, as: :json
    assert_response 200
  end

  test "should destroy exchange_symbol" do
    assert_difference('ExchangeSymbol.count', -1) do
      delete exchange_symbol_url(@exchange_symbol), as: :json
    end

    assert_response 204
  end
end
