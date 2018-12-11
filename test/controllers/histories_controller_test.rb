require 'test_helper'

class HistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history = histories(:one)
  end

  test "should get index" do
    get histories_url
    assert_response :success
  end

  test "should get new" do
    get new_history_url
    assert_response :success
  end

  test "should create history" do
    assert_difference('History.count') do
      post histories_url, params: { history: { address: @history.address, api_id: @history.api_id, buisiness_name: @history.buisiness_name, lat: @history.lat, long: @history.long, zip: @history.zip } }
    end

    assert_redirected_to history_url(History.last)
  end

  test "should show history" do
    get history_url(@history)
    assert_response :success
  end

  test "should get edit" do
    get edit_history_url(@history)
    assert_response :success
  end

  test "should update history" do
    patch history_url(@history), params: { history: { address: @history.address, api_id: @history.api_id, buisiness_name: @history.buisiness_name, lat: @history.lat, long: @history.long, zip: @history.zip } }
    assert_redirected_to history_url(@history)
  end

  test "should destroy history" do
    assert_difference('History.count', -1) do
      delete history_url(@history)
    end

    assert_redirected_to histories_url
  end
end
