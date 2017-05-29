# == Schema Information
#
# Table name: questionnaire_answers
#
#  id               :integer          not null, primary key
#  questionnaire_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class QuestionnaireAnswer < ApplicationRecord
  belongs_to :questionnaire
  has_many :questionnaire_item_answers
  
# 　TODO 一気に保存されるらしい？？　まだ未実装
#   accepts_nested_attributes_for :questionnaire_item_answers
end
