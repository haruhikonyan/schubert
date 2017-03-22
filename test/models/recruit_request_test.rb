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

require 'test_helper'

class RecruitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
