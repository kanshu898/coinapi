require 'test_helper'

class IcoMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ico_member = ico_members(:one)
  end

  test "should get index" do
    get ico_members_url, as: :json
    assert_response :success
  end

  test "should create ico_member" do
    assert_difference('IcoMember.count') do
      post ico_members_url, params: { ico_member: { coin_symbol: @ico_member.coin_symbol, designation: @ico_member.designation, image_url: @ico_member.image_url, name: @ico_member.name, social_linkedin: @ico_member.social_linkedin } }, as: :json
    end

    assert_response 201
  end

  test "should show ico_member" do
    get ico_member_url(@ico_member), as: :json
    assert_response :success
  end

  test "should update ico_member" do
    patch ico_member_url(@ico_member), params: { ico_member: { coin_symbol: @ico_member.coin_symbol, designation: @ico_member.designation, image_url: @ico_member.image_url, name: @ico_member.name, social_linkedin: @ico_member.social_linkedin } }, as: :json
    assert_response 200
  end

  test "should destroy ico_member" do
    assert_difference('IcoMember.count', -1) do
      delete ico_member_url(@ico_member), as: :json
    end

    assert_response 204
  end
end
