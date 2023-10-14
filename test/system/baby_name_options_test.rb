require "application_system_test_case"

class BabyNameOptionsTest < ApplicationSystemTestCase
  setup do
    @baby_name_option = baby_name_options(:one)
  end

  test "visiting the index" do
    visit baby_name_options_url
    assert_selector "h1", text: "Baby name options"
  end

  test "should create baby name option" do
    visit baby_name_options_url
    click_on "New baby name option"

    fill_in "Baby profile", with: @baby_name_option.baby_profile_id
    fill_in "Name", with: @baby_name_option.name
    click_on "Create Baby name option"

    assert_text "Baby name option was successfully created"
    click_on "Back"
  end

  test "should update Baby name option" do
    visit baby_name_option_url(@baby_name_option)
    click_on "Edit this baby name option", match: :first

    fill_in "Baby profile", with: @baby_name_option.baby_profile_id
    fill_in "Name", with: @baby_name_option.name
    click_on "Update Baby name option"

    assert_text "Baby name option was successfully updated"
    click_on "Back"
  end

  test "should destroy Baby name option" do
    visit baby_name_option_url(@baby_name_option)
    click_on "Destroy this baby name option", match: :first

    assert_text "Baby name option was successfully destroyed"
  end
end
