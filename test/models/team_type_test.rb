# == Schema Information
#
# Table name: team_types
#
#  id         :integer          not null, primary key
#  team_id    :integer          not null
#  type_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TeamTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
