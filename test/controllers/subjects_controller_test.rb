require "test_helper"

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_index_url
    assert_response :success
  end

  test "should get show_test" do
    get subjects_show_test_url
    assert_response :success
  end

  test "should get submit_test" do
    get subjects_submit_test_url
    assert_response :success
  end

  test "should get result" do
    get subjects_result_url
    assert_response :success
  end
end
