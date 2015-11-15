require 'test_helper'

class DhbvnControllerTest < ActionController::TestCase
  test "should get misson" do
    get :misson
    assert_response :success
  end

  test "should get vision_and_values" do
    get :vision_and_values
    assert_response :success
  end

  test "should get board_of_directors" do
    get :board_of_directors
    assert_response :success
  end

end
