require 'test_helper'

class BlogfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogfile_index_url
    assert_response :success
  end

  test "should get new" do
    get blogfile_new_url
    assert_response :success
  end

  test "should get create" do
    get blogfile_create_url
    assert_response :success
  end

  test "should get destroy" do
    get blogfile_destroy_url
    assert_response :success
  end

end
