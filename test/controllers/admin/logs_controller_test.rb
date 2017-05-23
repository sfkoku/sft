require 'test_helper'

class Admin::LogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_logs_index_url
    assert_response :success
  end

  test "should get update" do
    get admin_logs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_logs_destroy_url
    assert_response :success
  end

end
