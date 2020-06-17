require 'test_helper'

class RibControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rib_new_url
    assert_response :success
  end

  test "should get edit" do
    get rib_edit_url
    assert_response :success
  end

  test "should get show" do
    get rib_show_url
    assert_response :success
  end

end
