require 'test_helper'

class MpgoiControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get responsibilites" do
    get :responsibilites
    assert_response :success
  end

end
