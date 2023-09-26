require "test_helper"

class FirstEntryTimesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get first_entry_times_index_url
    assert_response :success
  end
end
