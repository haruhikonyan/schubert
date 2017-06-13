class QuestionnaireItemsController < ApplicationController
  before_action :set_questionnaire_item, only: [:show]
  before_action :set_questionnaire_item_answers, only: [:show]

  # GET /questionnaire_items/1
  # GET /questionnaire_items/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_item
      @questionnaire_item = QuestionnaireItem.find(params[:id])
    end

    def set_questionnaire_item_answers
      @questionnaire_item_answers = QuestionnaireItemAnswer.where(questionnaire_item: params[:id])
    end
end
