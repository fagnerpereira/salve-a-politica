require 'test_helper'

class PoliticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politic = politics(:one)
  end

  test "should get index" do
    get politics_url
    assert_response :success
  end

  test "should get new" do
    get new_politic_url
    assert_response :success
  end

  test "should create politic" do
    assert_difference('Politic.count') do
      post politics_url, params: { politic: {  } }
    end

    assert_redirected_to politic_url(Politic.last)
  end

  test "should show politic" do
    get politic_url(@politic)
    assert_response :success
  end

  test "should get edit" do
    get edit_politic_url(@politic)
    assert_response :success
  end

  test "should update politic" do
    patch politic_url(@politic), params: { politic: {  } }
    assert_redirected_to politic_url(@politic)
  end

  test "should destroy politic" do
    assert_difference('Politic.count', -1) do
      delete politic_url(@politic)
    end

    assert_redirected_to politics_url
  end
end
