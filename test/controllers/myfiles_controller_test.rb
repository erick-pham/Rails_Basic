require 'test_helper'

class MyfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myfiles_index_url
    assert_response :success
  end

  test "should get new" do
    get myfiles_new_url
    assert_response :success
  end

  test "should get create" do
    get myfiles_create_url
    assert_response :success
  end

  test "should get destroy" do
    get myfiles_destroy_url
    assert_response :success
  end

end
