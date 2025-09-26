require "test_helper"

class PredictionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers  # ✅ allows sign_in

  setup do
    @user = users(:one)  # using fixture
    sign_in @user         # ✅ log in user
  end

  test "should get new" do
    get new_prediction_url
    assert_response :success
  end

  test "should create prediction" do
    post predictions_url, params: { prediction: {} }
    assert_response :redirect
  end
end
