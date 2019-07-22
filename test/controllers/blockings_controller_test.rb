require 'test_helper'

class BlockingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blocking = blockings(:one)
  end

  test "should get index" do
    get blockings_url
    assert_response :success
  end

  test "should get new" do
    get new_blocking_url
    assert_response :success
  end

  test "should create blocking" do
    assert_difference('Blocking.count') do
      post blockings_url, params: { blocking: { recipient_id: @blocking.recipient_id, sender_id: @blocking.sender_id, status: @blocking.status } }
    end

    assert_redirected_to blocking_url(Blocking.last)
  end

  test "should show blocking" do
    get blocking_url(@blocking)
    assert_response :success
  end

  test "should get edit" do
    get edit_blocking_url(@blocking)
    assert_response :success
  end

  test "should update blocking" do
    patch blocking_url(@blocking), params: { blocking: { recipient_id: @blocking.recipient_id, sender_id: @blocking.sender_id, status: @blocking.status } }
    assert_redirected_to blocking_url(@blocking)
  end

  test "should destroy blocking" do
    assert_difference('Blocking.count', -1) do
      delete blocking_url(@blocking)
    end

    assert_redirected_to blockings_url
  end
end
