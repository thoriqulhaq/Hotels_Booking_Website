require "application_system_test_case"

class HotelsTest < ApplicationSystemTestCase
  setup do
    @hotel = hotels(:one)
  end

  test "visiting the index" do
    visit hotels_url
    assert_selector "h1", text: "Hotels"
  end

  test "creating a Hotel" do
    visit hotels_url
    click_on "New Hotel"

    fill_in "End date", with: @hotel.end_date
    fill_in "First name", with: @hotel.first_name
    fill_in "Last name", with: @hotel.last_name
    fill_in "Phone num", with: @hotel.phone_num
    fill_in "Room num", with: @hotel.room_num
    fill_in "Start date", with: @hotel.start_date
    click_on "Create Hotel"

    assert_text "Hotel was successfully created"
    click_on "Back"
  end

  test "updating a Hotel" do
    visit hotels_url
    click_on "Edit", match: :first

    fill_in "End date", with: @hotel.end_date
    fill_in "First name", with: @hotel.first_name
    fill_in "Last name", with: @hotel.last_name
    fill_in "Phone num", with: @hotel.phone_num
    fill_in "Room num", with: @hotel.room_num
    fill_in "Start date", with: @hotel.start_date
    click_on "Update Hotel"

    assert_text "Hotel was successfully updated"
    click_on "Back"
  end

  test "destroying a Hotel" do
    visit hotels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hotel was successfully destroyed"
  end
end
