# == Schema Information
#
# Table name: soloist_instruments
#
#  id                     :integer          not null, primary key
#  soloist_id              :integer
#  instrument_id          :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class SoloistInstrument < ApplicationRecord
	belongs_to :soloist
	belongs_to :instrument
end
