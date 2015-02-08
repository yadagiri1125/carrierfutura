require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get collection" do
    get :collection
    assert_response :success
  end

  test "should get seach" do
    get :seach
    assert_response :success
  end

end
