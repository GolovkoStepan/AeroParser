require 'test_helper'

class AircraftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aircrafts_index_url
    assert_response :success
  end

  test "should get show" do
    get aircrafts_show_url
    assert_response :success
  end

end
