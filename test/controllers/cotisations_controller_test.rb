require 'test_helper'

class CotisationsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cotisations_show_url
    assert_response :success
  end

  test "should get new" do
    get cotisations_new_url
    assert_response :success
  end

  test "should get create" do
    get cotisations_create_url
    assert_response :success
  end

  test "should get destroy" do
    get cotisations_destroy_url
    assert_response :success
  end

end
