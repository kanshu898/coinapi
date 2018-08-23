require 'test_helper'

class IcosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ico = icos(:one)
  end

  test "should get index" do
    get icos_url, as: :json
    assert_response :success
  end

  test "should create ico" do
    assert_difference('Ico.count') do
      post icos_url, params: { ico: { description: @ico.description, end_time: @ico.end_time, external_profile_url: @ico.external_profile_url, image_url: @ico.image_url, name: @ico.name, source: @ico.source, start_time: @ico.start_time, web_url: @ico.web_url } }, as: :json
    end

    assert_response 201
  end

  test "should show ico" do
    get ico_url(@ico), as: :json
    assert_response :success
  end

  test "should update ico" do
    patch ico_url(@ico), params: { ico: { description: @ico.description, end_time: @ico.end_time, external_profile_url: @ico.external_profile_url, image_url: @ico.image_url, name: @ico.name, source: @ico.source, start_time: @ico.start_time, web_url: @ico.web_url } }, as: :json
    assert_response 200
  end

  test "should destroy ico" do
    assert_difference('Ico.count', -1) do
      delete ico_url(@ico), as: :json
    end

    assert_response 204
  end
end
