# == Schema Information
#
# Table name: recruits
#
#  id               :integer          not null, primary key
#  practice_place   :string
#  practice_time    :string
#  free_text        :text
#  post_period_from :datetime
#  post_period_to   :datetime
#  team_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Recruit < ApplicationRecord
    belongs_to :team

    has_many :recruit_instruments
    has_many :instruments, :through => :recruit_instruments
end
