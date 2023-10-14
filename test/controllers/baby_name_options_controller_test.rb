require "test_helper"

class BabyNameOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baby_name_option = baby_name_options(:one)
  end

  test "should get index" do
    get baby_name_options_url
    assert_response :success
  end

  test "should get new" do
    get new_baby_name_option_url
    assert_response :success
  end

  test "should create baby_name_option" do
    assert_difference("BabyNameOption.count") do
      post baby_name_options_url, params: { baby_name_option: { baby_profile_id: @baby_name_option.baby_profile_id, name: @baby_name_option.name } }
    end

    assert_redirected_to baby_name_option_url(BabyNameOption.last)
  end

  test "should show baby_name_option" do
    get baby_name_option_url(@baby_name_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_baby_name_option_url(@baby_name_option)
    assert_response :success
  end

  test "should update baby_name_option" do
    patch baby_name_option_url(@baby_name_option), params: { baby_name_option: { baby_profile_id: @baby_name_option.baby_profile_id, name: @baby_name_option.name } }
    assert_redirected_to baby_name_option_url(@baby_name_option)
  end

  test "should destroy baby_name_option" do
    assert_difference("BabyNameOption.count", -1) do
      delete baby_name_option_url(@baby_name_option)
    end

    assert_redirected_to baby_name_options_url
  end
end
