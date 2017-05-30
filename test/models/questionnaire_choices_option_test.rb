# == Schema Information
#
# Table name: questionnaire_choices_options
#
#  id                    :integer          not null, primary key
#  option_name           :string           not null
#  questionnaire_item_id :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class QuestionnaireChoicesOptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
