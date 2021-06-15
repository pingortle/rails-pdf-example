require "application_system_test_case"

class ConversionsTest < ApplicationSystemTestCase
  setup do
    @conversion = conversions(:one)
  end

  test "visiting the index" do
    visit conversions_url
    assert_selector "h1", text: "Conversions"
  end

  test "creating a Conversion" do
    visit conversions_url
    click_on "New Conversion"

    fill_in "Source url", with: @conversion.source_url
    click_on "Create Conversion"

    assert_text "Conversion was successfully created"
    click_on "Back"
  end

  test "updating a Conversion" do
    visit conversions_url
    click_on "Edit", match: :first

    fill_in "Source url", with: @conversion.source_url
    click_on "Update Conversion"

    assert_text "Conversion was successfully updated"
    click_on "Back"
  end

  test "destroying a Conversion" do
    visit conversions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conversion was successfully destroyed"
  end
end
