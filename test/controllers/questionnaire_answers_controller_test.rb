require 'test_helper'

class QuestionnaireAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_answer = questionnaire_answers(:one)
  end

  test "should get index" do
    get questionnaire_answers_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_answer_url
    assert_response :success
  end

  test "should create questionnaire_answer" do
    assert_difference('QuestionnaireAnswer.count') do
      post questionnaire_answers_url, params: { questionnaire_answer: {  } }
    end

    assert_redirected_to questionnaire_answer_url(QuestionnaireAnswer.last)
  end

  test "should show questionnaire_answer" do
    get questionnaire_answer_url(@questionnaire_answer)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_answer_url(@questionnaire_answer)
    assert_response :success
  end

  test "should update questionnaire_answer" do
    patch questionnaire_answer_url(@questionnaire_answer), params: { questionnaire_answer: {  } }
    assert_redirected_to questionnaire_answer_url(@questionnaire_answer)
  end

  test "should destroy questionnaire_answer" do
    assert_difference('QuestionnaireAnswer.count', -1) do
      delete questionnaire_answer_url(@questionnaire_answer)
    end

    assert_redirected_to questionnaire_answers_url
  end
end
