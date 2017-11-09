require 'test_helper'

class FalabellaEmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get falabella_employees_index_url
    assert_response :success
  end

  test "should get new" do
    get falabella_employees_new_url
    assert_response :success
  end

  test "should get create" do
    get falabella_employees_create_url
    assert_response :success
  end

  test "should get edit" do
    get falabella_employees_edit_url
    assert_response :success
  end

  test "should get update" do
    get falabella_employees_update_url
    assert_response :success
  end

  test "should get destroy" do
    get falabella_employees_destroy_url
    assert_response :success
  end

end
