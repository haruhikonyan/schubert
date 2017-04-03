# == Schema Information
#
# Table name: instruments
#
#  id          :integer          not null, primary key
#  name        :string
#  sort_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Instrument < ApplicationRecord
  has_many :recruit_instruments
  has_many :recruits, :through => :recruit_instruments

  belongs_to :instrument_category

  scope :id_is, -> id {
    where(id: id)
  }

  def to_s
    self.name
  end

  def to_name_and_short_name
    "#{name}/#{short_name}"
  end
  
end
