# == Schema Information
#
# Table name: questionnaires
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  discription :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QuestionnaireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
