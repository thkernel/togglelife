require "application_system_test_case"

class FlirtsTest < ApplicationSystemTestCase
  setup do
    @flirt = flirts(:one)
  end

  test "visiting the index" do
    visit flirts_url
    assert_selector "h1", text: "Flirts"
  end

  test "creating a Flirt" do
    visit flirts_url
    click_on "New Flirt"

    fill_in "", with: @flirt.
    fill_in "Recipient", with: @flirt.recipient_id
    fill_in "Sender", with: @flirt.sender_id
    fill_in "Status", with: @flirt.status
    click_on "Create Flirt"

    assert_text "Flirt was successfully created"
    click_on "Back"
  end

  test "updating a Flirt" do
    visit flirts_url
    click_on "Edit", match: :first

    fill_in "", with: @flirt.
    fill_in "Recipient", with: @flirt.recipient_id
    fill_in "Sender", with: @flirt.sender_id
    fill_in "Status", with: @flirt.status
    click_on "Update Flirt"

    assert_text "Flirt was successfully updated"
    click_on "Back"
  end

  test "destroying a Flirt" do
    visit flirts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flirt was successfully destroyed"
  end
end
