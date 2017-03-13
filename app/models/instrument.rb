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
    has_many :recruit_requests
    has_many :recruit_requests, :through => :recruit_request_instruments
end
