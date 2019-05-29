require 'test_helper'

class ShotProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shot_profile = shot_profiles(:one)
  end

  test "should get index" do
    get shot_profiles_url, as: :json
    assert_response :success
  end

  test "should create shot_profile" do
    assert_difference('ShotProfile.count') do
      post shot_profiles_url, params: { shot_profile: { field_goal_percentage: @shot_profile.field_goal_percentage, field_goals_attempted: @shot_profile.field_goals_attempted, field_goals_made: @shot_profile.field_goals_made, rank: @shot_profile.rank } }, as: :json
    end

    assert_response 201
  end

  test "should show shot_profile" do
    get shot_profile_url(@shot_profile), as: :json
    assert_response :success
  end

  test "should update shot_profile" do
    patch shot_profile_url(@shot_profile), params: { shot_profile: { field_goal_percentage: @shot_profile.field_goal_percentage, field_goals_attempted: @shot_profile.field_goals_attempted, field_goals_made: @shot_profile.field_goals_made, rank: @shot_profile.rank } }, as: :json
    assert_response 200
  end

  test "should destroy shot_profile" do
    assert_difference('ShotProfile.count', -1) do
      delete shot_profile_url(@shot_profile), as: :json
    end

    assert_response 204
  end
end
