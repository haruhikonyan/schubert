# == Schema Information
#
# Table name: instrument_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InstrumentCategory < ApplicationRecord
  has_many :instruments

  def to_s
    name
  end
end
