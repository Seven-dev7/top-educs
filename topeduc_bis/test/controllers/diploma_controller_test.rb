require 'test_helper'

class DiplomaControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get diploma_new_url
    assert_response :success
  end

  test "should get edit" do
    get diploma_edit_url
    assert_response :success
  end

  test "should get show" do
    get diploma_show_url
    assert_response :success
  end

end
