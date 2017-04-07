# == Schema Information
#
# Table name: recruit_instruments
#
#  id            :integer          not null, primary key
#  recruit_id    :integer          not null
#  instrument_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RecruitInstrument < ApplicationRecord
    belongs_to :recruit
    belongs_to :instrument
end
