# == Schema Information
#
# Table name: recruit_request_instruments
#
#  id                 :integer          not null, primary key
#  recruit_request_id :integer          not null
#  instrument_id      :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class RecruitRequestInstrument < ApplicationRecord
    belongs_to :recruit_request
    belongs_to :instrument
end
