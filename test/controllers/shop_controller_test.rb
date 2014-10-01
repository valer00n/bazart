require 'test_helper'

class ShopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get cart" do
    get :cart
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
