class Team < ApplicationRecord
    has_many :recruit_requests
    has_many :team_types
    has_many :types, :through => :team_types
    has_many :team_regions
    has_many :regions, :through => :team_regions
end
