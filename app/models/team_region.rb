class TeamRegion < ApplicationRecord
    belongs_to :team
    belongs_to :region
end
