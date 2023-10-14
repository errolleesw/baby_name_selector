require "test_helper"

class BabyProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_profile = baby_profiles(:one)
  end

  test "should get index" do
    get baby_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_baby_profile_url
    assert_response :success
  end

  test "should create baby_profile" do
    assert_difference("BabyProfile.count") do
      post baby_profiles_url, params: { baby_profile: { description: @baby_profile.description, expected_date: @baby_profile.expected_date, fathers_name: @baby_profile.fathers_name, gender: @baby_profile.gender, mothers_name: @baby_profile.mothers_name } }
    end

    assert_redirected_to baby_profile_url(BabyProfile.last)
  end

  test "should show baby_profile" do
    get baby_profile_url(@baby_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_baby_profile_url(@baby_profile)
    assert_response :success
  end

  test "should update baby_profile" do
    patch baby_profile_url(@baby_profile), params: { baby_profile: { description: @baby_profile.description, expected_date: @baby_profile.expected_date, fathers_name: @baby_profile.fathers_name, gender: @baby_profile.gender, mothers_name: @baby_profile.mothers_name } }
    assert_redirected_to baby_profile_url(@baby_profile)
  end

  test "should destroy baby_profile" do
    assert_difference("BabyProfile.count", -1) do
      delete baby_profile_url(@baby_profile)
    end

    assert_redirected_to baby_profiles_url
  end
end
