require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get display" do
    get :display
    assert_response :success
  end

end
