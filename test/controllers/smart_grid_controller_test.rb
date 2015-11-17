require 'test_helper'

class SmartGridControllerTest < ActionController::TestCase
  test "should get what" do
    get :what
    assert_response :success
  end

  test "should get existing" do
    get :existing
    assert_response :success
  end

  test "should get need" do
    get :need
    assert_response :success
  end

  test "should get main_features" do
    get :main_features
    assert_response :success
  end

  test "should get phases" do
    get :phases
    assert_response :success
  end

end
