require 'test_helper'

class BoatJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get boat_jobs_index_url
    assert_response :success
  end

  test "should get new" do
    get boat_jobs_new_url
    assert_response :success
  end

  test "should get create" do
    get boat_jobs_create_url
    assert_response :success
  end

  test "should get show" do
    get boat_jobs_show_url
    assert_response :success
  end

  test "should get edit" do
    get boat_jobs_edit_url
    assert_response :success
  end

  test "should get update" do
    get boat_jobs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get boat_jobs_destroy_url
    assert_response :success
  end

end
