require 'test_helper'

class BootTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boot_test = boot_tests(:one)
  end

  test "should get index" do
    get boot_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_boot_test_url
    assert_response :success
  end

  test "should create boot_test" do
    assert_difference('BootTest.count') do
      post boot_tests_url, params: { boot_test: {  } }
    end

    assert_redirected_to boot_test_url(BootTest.last)
  end

  test "should show boot_test" do
    get boot_test_url(@boot_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_boot_test_url(@boot_test)
    assert_response :success
  end

  test "should update boot_test" do
    patch boot_test_url(@boot_test), params: { boot_test: {  } }
    assert_redirected_to boot_test_url(@boot_test)
  end

  test "should destroy boot_test" do
    assert_difference('BootTest.count', -1) do
      delete boot_test_url(@boot_test)
    end

    assert_redirected_to boot_tests_url
  end
end
