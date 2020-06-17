require 'test_helper'

class CarteVitaleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get carte_vitale_new_url
    assert_response :success
  end

  test "should get edit" do
    get carte_vitale_edit_url
    assert_response :success
  end

  test "should get show" do
    get carte_vitale_show_url
    assert_response :success
  end

end
