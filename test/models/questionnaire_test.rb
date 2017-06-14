# == Schema Information
#
# Table name: questionnaires
#
#  id                 :integer          not null, primary key
#  access_token       :string           not null
#  title              :string           not null
#  header_discription :text
#  footer_discription :text
#  password_digest    :string           not null
#  published_from     :datetime         not null
#  published_to       :datetime         not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class QuestionnaireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
