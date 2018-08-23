require 'test_helper'

class IcoMemberTest < ActiveSupport::TestCase
  def setup
    @ico_member = ico_members(:one)
  end
  test "associations" do
    assert_equal nil, @ico_member.ico
  end
end
