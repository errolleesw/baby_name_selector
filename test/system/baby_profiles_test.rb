require "application_system_test_case"

class BabyProfilesTest < ApplicationSystemTestCase
  setup do
    @baby_profile = baby_profiles(:one)
  end

  test "visiting the index" do
    visit baby_profiles_url
    assert_selector "h1", text: "Baby profiles"
  end

  test "should create baby profile" do
    visit baby_profiles_url
    click_on "New baby profile"

    fill_in "Description", with: @baby_profile.description
    fill_in "Expected date", with: @baby_profile.expected_date
    fill_in "Fathers name", with: @baby_profile.fathers_name
    fill_in "Gender", with: @baby_profile.gender
    fill_in "Mothers name", with: @baby_profile.mothers_name
    click_on "Create Baby profile"

    assert_text "Baby profile was successfully created"
    click_on "Back"
  end

  test "should update Baby profile" do
    visit baby_profile_url(@baby_profile)
    click_on "Edit this baby profile", match: :first

    fill_in "Description", with: @baby_profile.description
    fill_in "Expected date", with: @baby_profile.expected_date
    fill_in "Fathers name", with: @baby_profile.fathers_name
    fill_in "Gender", with: @baby_profile.gender
    fill_in "Mothers name", with: @baby_profile.mothers_name
    click_on "Update Baby profile"

    assert_text "Baby profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Baby profile" do
    visit baby_profile_url(@baby_profile)
    click_on "Destroy this baby profile", match: :first

    assert_text "Baby profile was successfully destroyed"
  end
end
