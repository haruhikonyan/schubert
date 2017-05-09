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

class Questionnaire < ApplicationRecord
  has_many :questionnaire_items
end
