require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get start2" do
    get :start2
    assert_response :success
  end

end
