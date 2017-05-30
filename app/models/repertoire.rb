# == Schema Information
#
# Table name: repertoires
#
#  id                              :integer          not null, primary key
#  name                            :string           not null
#  composer                        :string
#  concert_information_id          :integer
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class Repertoire < ApplicationRecord
  belongs_to :concert_information

  has_many :soloists
end
