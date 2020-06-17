require 'test_helper'

class ResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resume_new_url
    assert_response :success
  end

  test "should get edit" do
    get resume_edit_url
    assert_response :success
  end

  test "should get show" do
    get resume_show_url
    assert_response :success
  end

end
