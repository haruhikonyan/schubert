# == Schema Information
#
# Table name: soloists
#
#  id                              :integer          not null, primary key
#  name                            :string           not null
#  repertoire_id                   :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class Soloist < ApplicationRecord
  belongs_to :repertoire

  has_many :soloist_instruments
  has_many :instruments, :through => :soloist_instruments
end
