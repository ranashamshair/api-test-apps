require "test_helper"

class Api::ApisControllerTest < ActionDispatch::IntegrationTest
  test "should get testing" do
    get api_apis_testing_url
    assert_response :success
  end
end
