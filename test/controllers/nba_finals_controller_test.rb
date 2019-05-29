require 'test_helper'

class NbaFinalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nba_final = nba_finals(:one)
  end

  test "should get index" do
    get nba_finals_url, as: :json
    assert_response :success
  end

  test "should create nba_final" do
    assert_difference('NbaFinal.count') do
      post nba_finals_url, params: { nba_final: { conference: @nba_final.conference, team: @nba_final.team } }, as: :json
    end

    assert_response 201
  end

  test "should show nba_final" do
    get nba_final_url(@nba_final), as: :json
    assert_response :success
  end

  test "should update nba_final" do
    patch nba_final_url(@nba_final), params: { nba_final: { conference: @nba_final.conference, team: @nba_final.team } }, as: :json
    assert_response 200
  end

  test "should destroy nba_final" do
    assert_difference('NbaFinal.count', -1) do
      delete nba_final_url(@nba_final), as: :json
    end

    assert_response 204
  end
end
