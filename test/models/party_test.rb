require 'test_helper'

class PartyTest < ActiveSupport::TestCase
  test "the truth" do
     assert_equal parties(:one).name, "one party"
  end
end
