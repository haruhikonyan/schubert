class Type < ApplicationRecord
    has_many :team_types
    has_many :teams, :through => :team_types
end
