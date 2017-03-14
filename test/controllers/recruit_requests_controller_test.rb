require 'test_helper'

class RecruitRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruit_request = recruit_requests(:one)
  end

  test "should get index" do
    get recruit_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_recruit_request_url
    assert_response :success
  end

  test "should create recruit_request" do
    assert_difference('RecruitRequest.count') do
      post recruit_requests_url, params: { recruit_request: {  } }
    end

    assert_redirected_to recruit_request_url(RecruitRequest.last)
  end

  test "should show recruit_request" do
    get recruit_request_url(@recruit_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_recruit_request_url(@recruit_request)
    assert_response :success
  end

  test "should update recruit_request" do
    patch recruit_request_url(@recruit_request), params: { recruit_request: {  } }
    assert_redirected_to recruit_request_url(@recruit_request)
  end

  test "should destroy recruit_request" do
    assert_difference('RecruitRequest.count', -1) do
      delete recruit_request_url(@recruit_request)
    end

    assert_redirected_to recruit_requests_url
  end
end
