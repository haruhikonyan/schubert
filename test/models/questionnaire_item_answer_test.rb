# == Schema Information
#
# Table name: questionnaire_item_answers
#
#  id                      :integer          not null, primary key
#  free_text_answer        :text
#  questionnaire_item_id   :integer          not null
#  questionnaire_answer_id :integer          not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'test_helper'

class QuestionnaireItemAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
