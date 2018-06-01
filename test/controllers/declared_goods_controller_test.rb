require 'test_helper'

class DeclaredGoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @declared_good = declared_goods(:one)
  end

  test "should get index" do
    get declared_goods_url
    assert_response :success
  end

  test "should get new" do
    get new_declared_good_url
    assert_response :success
  end

  test "should create declared_good" do
    assert_difference('DeclaredGood.count') do
      post declared_goods_url, params: { declared_good: {  } }
    end

    assert_redirected_to declared_good_url(DeclaredGood.last)
  end

  test "should show declared_good" do
    get declared_good_url(@declared_good)
    assert_response :success
  end

  test "should get edit" do
    get edit_declared_good_url(@declared_good)
    assert_response :success
  end

  test "should update declared_good" do
    patch declared_good_url(@declared_good), params: { declared_good: {  } }
    assert_redirected_to declared_good_url(@declared_good)
  end

  test "should destroy declared_good" do
    assert_difference('DeclaredGood.count', -1) do
      delete declared_good_url(@declared_good)
    end

    assert_redirected_to declared_goods_url
  end
end
