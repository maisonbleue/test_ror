require 'test_helper'

class ManageStockControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_stock_index_url
    assert_response :success
  end

end
