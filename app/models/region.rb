# == Schema Information
#
# Table name: regions
#
#  id          :integer          not null, primary key
#  name        :string
#  sort_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Region < ApplicationRecord
  has_many :team_regions
  has_many :teams, :through => :team_regions

  def to_s
    self.name
  end
end
