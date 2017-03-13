class RecruitRequest < ApplicationRecord
    belongs_to :team

    has_many :instruments
    has_many :instruments, :through => :recruit_request_instruments
end
