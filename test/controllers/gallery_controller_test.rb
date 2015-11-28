require 'test_helper'

class GalleryControllerTest < ActionController::TestCase
  test "should get image_display" do
    get :image_display
    assert_response :success
  end

end
