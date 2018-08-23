require 'test_helper'

class IcoTest < ActiveSupport::TestCase
  def setup
    @ico = icos(:one)
  end
  test "associations" do
    assert_equal 0, @ico.ico_members.size
  end
end
