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

class QuestionnaireItemAnswer < ApplicationRecord
  belongs_to :questionnaire_item
  belongs_to :questionnaire_answer
  has_many :questionnaire_choices_options
  has_many :answer_choices_options, :through => :questionnaire_choices_options

end
