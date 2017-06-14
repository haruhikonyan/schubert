# == Schema Information
#
# Table name: questionnaire_items
#
#  id                 :integer          not null, primary key
#  title              :string           not null
#  sort_number        :integer          not null
#  is_exist_free_text :boolean          default("false"), not null
#  is_multiple        :boolean          default("true"), not null
#  questionnaire_id   :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class QuestionnaireItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
