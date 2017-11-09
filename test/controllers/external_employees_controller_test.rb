require 'test_helper'

class ExternalEmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get external_employees_index_url
    assert_response :success
  end

  test "should get show" do
    get external_employees_show_url
    assert_response :success
  end

  test "should get new" do
    get external_employees_new_url
    assert_response :success
  end

  test "should get create" do
    get external_employees_create_url
    assert_response :success
  end

  test "should get edit" do
    get external_employees_edit_url
    assert_response :success
  end

  test "should get update" do
    get external_employees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get external_employees_destroy_url
    assert_response :success
  end

end
