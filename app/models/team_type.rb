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

class TeamType < ApplicationRecord
    belongs_to :team
    belongs_to :type
end
