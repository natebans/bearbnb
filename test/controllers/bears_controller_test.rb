require "test_helper"

class BearsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bears_new_url
    assert_response :success
  end

  test "should get create" do
    get bears_create_url
    assert_response :success
  end

  test "should get update" do
    get bears_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bears_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get bears_edit_url
    assert_response :success
  end

  test "should get show" do
    get bears_show_url
    assert_response :success
  end

  test "should get index" do
    get bears_index_url
    assert_response :success
  end
end
