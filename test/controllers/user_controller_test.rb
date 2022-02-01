require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get user_name:string_url
    assert_response :success
  end

  test "should get email:text" do
    get user_email:text_url
    assert_response :success
  end

  test "should get password_digest:text" do
    get user_password_digest:text_url
    assert_response :success
  end

end
