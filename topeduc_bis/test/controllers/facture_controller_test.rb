require 'test_helper'

class FactureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facture_index_url
    assert_response :success
  end

  test "should get show" do
    get facture_show_url
    assert_response :success
  end

  test "should get new" do
    get facture_new_url
    assert_response :success
  end

  test "should get edit" do
    get facture_edit_url
    assert_response :success
  end

end
