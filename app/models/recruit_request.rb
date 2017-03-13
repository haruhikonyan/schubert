# == Schema Information
#
# Table name: recruit_requests
#
#  id               :integer          not null, primary key
#  practice_place   :string
#  practoce_time    :string
#  free_text        :text
#  post_period_from :datetime
#  post_period_to   :datetime
#  team_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class RecruitRequest < ApplicationRecord
    belongs_to :team

    has_many :instruments
    has_many :instruments, :through => :recruit_request_instruments
end
