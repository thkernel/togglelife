require 'test_helper'

class FlirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flirt = flirts(:one)
  end

  test "should get index" do
    get flirts_url
    assert_response :success
  end

  test "should get new" do
    get new_flirt_url
    assert_response :success
  end

  test "should create flirt" do
    assert_difference('Flirt.count') do
      post flirts_url, params: { flirt: { : @flirt., recipient_id: @flirt.recipient_id, sender_id: @flirt.sender_id, status: @flirt.status } }
    end

    assert_redirected_to flirt_url(Flirt.last)
  end

  test "should show flirt" do
    get flirt_url(@flirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_flirt_url(@flirt)
    assert_response :success
  end

  test "should update flirt" do
    patch flirt_url(@flirt), params: { flirt: { : @flirt., recipient_id: @flirt.recipient_id, sender_id: @flirt.sender_id, status: @flirt.status } }
    assert_redirected_to flirt_url(@flirt)
  end

  test "should destroy flirt" do
    assert_difference('Flirt.count', -1) do
      delete flirt_url(@flirt)
    end

    assert_redirected_to flirts_url
  end
end
