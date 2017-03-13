class Region < ApplicationRecord
    has_many :team_regions
    has_many :teams, :through => :team_regions
end
