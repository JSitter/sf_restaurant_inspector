require "application_system_test_case"

class HistoriesTest < ApplicationSystemTestCase
  setup do
    @history = histories(:one)
  end

  test "visiting the index" do
    visit histories_url
    assert_selector "h1", text: "Histories"
  end

  test "creating a History" do
    visit histories_url
    click_on "New History"

    fill_in "Address", with: @history.address
    fill_in "Api", with: @history.api_id
    fill_in "Buisiness name", with: @history.buisiness_name
    fill_in "Lat", with: @history.lat
    fill_in "Long", with: @history.long
    fill_in "Zip", with: @history.zip
    click_on "Create History"

    assert_text "History was successfully created"
    click_on "Back"
  end

  test "updating a History" do
    visit histories_url
    click_on "Edit", match: :first

    fill_in "Address", with: @history.address
    fill_in "Api", with: @history.api_id
    fill_in "Buisiness name", with: @history.buisiness_name
    fill_in "Lat", with: @history.lat
    fill_in "Long", with: @history.long
    fill_in "Zip", with: @history.zip
    click_on "Update History"

    assert_text "History was successfully updated"
    click_on "Back"
  end

  test "destroying a History" do
    visit histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "History was successfully destroyed"
  end
end
