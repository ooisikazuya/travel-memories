require 'test_helper'

class ItineraryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itinerary_index_url
    assert_response :success
  end

end
