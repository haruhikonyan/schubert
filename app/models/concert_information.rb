# == Schema Information
#
# Table name: concert_informations
#
#  id                                :integer          not null, primary key
#  name                              :string           not null
#  day                               :date
#  performance_opening_time          :datetime
#  place_opening_time                :datetime
#  place                             :string
#  place_url                         :string
#  director                          :string
#  price                             :integer
#  ticket_type                       :string
#  introduction                      :text
#  team_id                           :integer
#  created_at                        :datetime         not null
#  updated_at                        :datetime         not null
#

class ConcertInformation < ApplicationRecord
  belongs_to :team

  has_many :repertoires
end
