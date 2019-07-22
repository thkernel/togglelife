require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get cgu" do
    get pages_cgu_url
    assert_response :success
  end

  test "should get cookies" do
    get pages_cookies_url
    assert_response :success
  end

  test "should get policy" do
    get pages_policy_url
    assert_response :success
  end

end
