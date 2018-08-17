require 'test_helper'

class BlogfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogfiles_index_url
    assert_response :success
  end

  test "should get new" do
    get blogfiles_new_url
    assert_response :success
  end

  test "should get create" do
    get blogfiles_create_url
    assert_response :success
  end

  test "should get destroy" do
    get blogfiles_destroy_url
    assert_response :success
  end

end
