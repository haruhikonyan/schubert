class QuestionnaireAnswersController < ApplicationController
  before_action :set_questionnaire_answer, only: [:show]

  # GET /questionnaire_answers/1
  # GET /questionnaire_answers/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_answer
      @questionnaire_answer = QuestionnaireAnswer.find(params[:id])
    end
end
