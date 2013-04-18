require 'test_helper'

class HipchatUsersControllerTest < ActionController::TestCase
  test "should get list_users_now" do
    get :list_users_now
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
