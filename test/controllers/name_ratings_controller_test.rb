require "test_helper"

class NameRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @name_rating = name_ratings(:one)
  end

  test "should get index" do
    get name_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_name_rating_url
    assert_response :success
  end

  test "should create name_rating" do
    assert_difference("NameRating.count") do
      post name_ratings_url, params: { name_rating: { baby_name_option_id: @name_rating.baby_name_option_id, factor: @name_rating.factor, rating: @name_rating.rating } }
    end

    assert_redirected_to name_rating_url(NameRating.last)
  end

  test "should show name_rating" do
    get name_rating_url(@name_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_name_rating_url(@name_rating)
    assert_response :success
  end

  test "should update name_rating" do
    patch name_rating_url(@name_rating), params: { name_rating: { baby_name_option_id: @name_rating.baby_name_option_id, factor: @name_rating.factor, rating: @name_rating.rating } }
    assert_redirected_to name_rating_url(@name_rating)
  end

  test "should destroy name_rating" do
    assert_difference("NameRating.count", -1) do
      delete name_rating_url(@name_rating)
    end

    assert_redirected_to name_ratings_url
  end
end
