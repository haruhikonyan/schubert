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
  include FriendlyId
  friendly_id :access_token

  # SecurePassword有効
  has_secure_password
  has_many :questionnaire_items


  before_create do
    # 衝突しないか心配
    self.access_token = SecureRandom.hex(10)
  end
end
