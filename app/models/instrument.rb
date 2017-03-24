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

  scope :id_is, -> id {
    where(id: id)
  }

  def to_s
    self.name
  end
  
end
