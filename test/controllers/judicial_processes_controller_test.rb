require 'test_helper'

class JudicialProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @judicial_process = judicial_processes(:one)
  end

  test "should get index" do
    get judicial_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_judicial_process_url
    assert_response :success
  end

  test "should create judicial_process" do
    assert_difference('JudicialProcess.count') do
      post judicial_processes_url, params: { judicial_process: {  } }
    end

    assert_redirected_to judicial_process_url(JudicialProcess.last)
  end

  test "should show judicial_process" do
    get judicial_process_url(@judicial_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_judicial_process_url(@judicial_process)
    assert_response :success
  end

  test "should update judicial_process" do
    patch judicial_process_url(@judicial_process), params: { judicial_process: {  } }
    assert_redirected_to judicial_process_url(@judicial_process)
  end

  test "should destroy judicial_process" do
    assert_difference('JudicialProcess.count', -1) do
      delete judicial_process_url(@judicial_process)
    end

    assert_redirected_to judicial_processes_url
  end
end
