require "test_helper"

class UsedSlotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get used_slots_index_url
    assert_response :success
  end
end
