require 'test_helper'

class FavorisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favori = favoris(:one)
  end

  test "should get index" do
    get favoris_url
    assert_response :success
  end

  test "should get new" do
    get new_favori_url
    assert_response :success
  end

  test "should create favori" do
    assert_difference('Favori.count') do
      post favoris_url, params: { favori: { recipient_id: @favori.recipient_id, sender_id: @favori.sender_id, status: @favori.status } }
    end

    assert_redirected_to favori_url(Favori.last)
  end

  test "should show favori" do
    get favori_url(@favori)
    assert_response :success
  end

  test "should get edit" do
    get edit_favori_url(@favori)
    assert_response :success
  end

  test "should update favori" do
    patch favori_url(@favori), params: { favori: { recipient_id: @favori.recipient_id, sender_id: @favori.sender_id, status: @favori.status } }
    assert_redirected_to favori_url(@favori)
  end

  test "should destroy favori" do
    assert_difference('Favori.count', -1) do
      delete favori_url(@favori)
    end

    assert_redirected_to favoris_url
  end
end
