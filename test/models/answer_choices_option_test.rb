# == Schema Information
#
# Table name: answer_choices_options
#
#  id                              :integer          not null, primary key
#  questionnaire_item_answer_id    :integer          not null
#  questionnaire_choices_option_id :integer          not null
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

require 'test_helper'

class AnswerChoicesOptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
