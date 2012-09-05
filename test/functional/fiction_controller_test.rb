require 'test_helper'

class FictionControllerTest < ActionController::TestCase
  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get sports" do
    get :sports
    assert_response :success
  end

  test "should get sports2" do
    get :sports2
    assert_response :success
  end

end
