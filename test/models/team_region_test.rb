# == Schema Information
#
# Table name: team_regions
#
#  id         :integer          not null, primary key
#  team_id    :integer          not null
#  region_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TeamRegionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
