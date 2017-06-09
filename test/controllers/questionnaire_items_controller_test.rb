require 'test_helper'

class QuestionnaireItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_item = questionnaire_items(:one)
  end

  test "should get index" do
    get questionnaire_items_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_item_url
    assert_response :success
  end

  test "should create questionnaire_item" do
    assert_difference('QuestionnaireItem.count') do
      post questionnaire_items_url, params: { questionnaire_item: {  } }
    end

    assert_redirected_to questionnaire_item_url(QuestionnaireItem.last)
  end

  test "should show questionnaire_item" do
    get questionnaire_item_url(@questionnaire_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_item_url(@questionnaire_item)
    assert_response :success
  end

  test "should update questionnaire_item" do
    patch questionnaire_item_url(@questionnaire_item), params: { questionnaire_item: {  } }
    assert_redirected_to questionnaire_item_url(@questionnaire_item)
  end

  test "should destroy questionnaire_item" do
    assert_difference('QuestionnaireItem.count', -1) do
      delete questionnaire_item_url(@questionnaire_item)
    end

    assert_redirected_to questionnaire_items_url
  end
end
