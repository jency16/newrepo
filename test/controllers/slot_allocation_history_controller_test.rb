require "test_helper"

class SlotAllocationHistoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get slot_allocation_history_show_url
    assert_response :success
  end
end
