require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  test "should get home page" do
    get :index
    assert_response :success
  end

  test "should get token page when authenticated as a user" do
    sign_in users(:john)
    get :token
    assert_response :success
  end

  test "should redirect to login page when viewing token page whilst not authenticated" do
    get :token
    assert_redirected_to new_user_session_path
  end

end
