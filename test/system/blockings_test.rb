require "application_system_test_case"

class BlockingsTest < ApplicationSystemTestCase
  setup do
    @blocking = blockings(:one)
  end

  test "visiting the index" do
    visit blockings_url
    assert_selector "h1", text: "Blockings"
  end

  test "creating a Blocking" do
    visit blockings_url
    click_on "New Blocking"

    fill_in "Recipient", with: @blocking.recipient_id
    fill_in "Sender", with: @blocking.sender_id
    fill_in "Status", with: @blocking.status
    click_on "Create Blocking"

    assert_text "Blocking was successfully created"
    click_on "Back"
  end

  test "updating a Blocking" do
    visit blockings_url
    click_on "Edit", match: :first

    fill_in "Recipient", with: @blocking.recipient_id
    fill_in "Sender", with: @blocking.sender_id
    fill_in "Status", with: @blocking.status
    click_on "Update Blocking"

    assert_text "Blocking was successfully updated"
    click_on "Back"
  end

  test "destroying a Blocking" do
    visit blockings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blocking was successfully destroyed"
  end
end
