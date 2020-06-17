require 'test_helper'

class KbiControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kbi_new_url
    assert_response :success
  end

  test "should get edit" do
    get kbi_edit_url
    assert_response :success
  end

  test "should get show" do
    get kbi_show_url
    assert_response :success
  end

end
