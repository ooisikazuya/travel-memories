require 'test_helper'

class MoneyManegementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get money_manegement_index_url
    assert_response :success
  end

end
