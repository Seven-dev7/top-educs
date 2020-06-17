require 'test_helper'

class IdControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get id_new_url
    assert_response :success
  end

  test "should get edit" do
    get id_edit_url
    assert_response :success
  end

  test "should get show" do
    get id_show_url
    assert_response :success
  end

end
