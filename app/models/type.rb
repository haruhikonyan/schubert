# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Type < ApplicationRecord
    has_many :team_types
    has_many :teams, :through => :team_types
end
