require 'test_helper'

class PermisBControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get permis_b_new_url
    assert_response :success
  end

  test "should get edit" do
    get permis_b_edit_url
    assert_response :success
  end

  test "should get show" do
    get permis_b_show_url
    assert_response :success
  end

end
