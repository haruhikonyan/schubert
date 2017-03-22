# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  password   :string           not null
#  mail       :string
#  url        :string
#  free_text  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
    has_many :recruits
    has_many :team_types
    has_many :types, :through => :team_types
    has_many :team_regions
    has_many :regions, :through => :team_regions
end
