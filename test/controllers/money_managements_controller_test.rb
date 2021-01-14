require 'test_helper'

class MoneyManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get money_managements_index_url
    assert_response :success
  end

end
