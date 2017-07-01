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

class QuestionnaireItem < ApplicationRecord
  belongs_to :questionnaire

  has_many :questionnaire_choices_options
  has_many :questionnaire_item_answers

  accepts_nested_attributes_for :questionnaire_choices_options, allow_destroy: true
end
