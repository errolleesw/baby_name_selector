require "application_system_test_case"

class NameRatingsTest < ApplicationSystemTestCase
  setup do
    @name_rating = name_ratings(:one)
  end

  test "visiting the index" do
    visit name_ratings_url
    assert_selector "h1", text: "Name ratings"
  end

  test "should create name rating" do
    visit name_ratings_url
    click_on "New name rating"

    fill_in "Baby name option", with: @name_rating.baby_name_option_id
    fill_in "Factor", with: @name_rating.factor
    fill_in "Rating", with: @name_rating.rating
    click_on "Create Name rating"

    assert_text "Name rating was successfully created"
    click_on "Back"
  end

  test "should update Name rating" do
    visit name_rating_url(@name_rating)
    click_on "Edit this name rating", match: :first

    fill_in "Baby name option", with: @name_rating.baby_name_option_id
    fill_in "Factor", with: @name_rating.factor
    fill_in "Rating", with: @name_rating.rating
    click_on "Update Name rating"

    assert_text "Name rating was successfully updated"
    click_on "Back"
  end

  test "should destroy Name rating" do
    visit name_rating_url(@name_rating)
    click_on "Destroy this name rating", match: :first

    assert_text "Name rating was successfully destroyed"
  end
end
