require 'test_helper'

class UpateStockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upate_stock_index_url
    assert_response :success
  end

end
