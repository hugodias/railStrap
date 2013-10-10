require 'test_helper'

class AdminsControllerTest < ActionController::TestCase

  test "should get index page when authenticated as an admin" do
    sign_in admins(:bob)
    get :index
    assert_response :success
  end

  test "should redirect to login page when viewing index page whilst authenticated as a user" do
    sign_in users(:john)
    get :index
    assert_redirected_to new_admin_session_path
  end

  test "should redirect to login page when viewing index page whilst not authenticated" do
    get :index
    assert_redirected_to new_admin_session_path
  end

end
