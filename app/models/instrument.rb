class Instrument < ApplicationRecord
    has_many :recruit_requests
    has_many :recruit_requests, :through => :recruit_request_instruments
end
