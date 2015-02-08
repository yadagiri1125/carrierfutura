require 'test_helper'

class SatishesControllerTest < ActionController::TestCase
  setup do
    @satish = satishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:satishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create satish" do
    assert_difference('Satish.count') do
      post :create, satish: { name: @satish.name }
    end

    assert_redirected_to satish_path(assigns(:satish))
  end

  test "should show satish" do
    get :show, id: @satish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @satish
    assert_response :success
  end

  test "should update satish" do
    patch :update, id: @satish, satish: { name: @satish.name }
    assert_redirected_to satish_path(assigns(:satish))
  end

  test "should destroy satish" do
    assert_difference('Satish.count', -1) do
      delete :destroy, id: @satish
    end

    assert_redirected_to satishes_path
  end
end
