# == Schema Information
#
# Table name: recruits
#
#  id               :integer          not null, primary key
#  practice_place   :string
#  practice_time    :string
#  free_text        :text
#  post_period_from :datetime
#  post_period_to   :datetime
#  team_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Recruit < ApplicationRecord
  belongs_to :team

  has_many :recruit_instruments
  has_many :instruments, :through => :recruit_instruments

  scope :has_instrument_id, -> instrument_id {
    joins(:instruments).where('instruments.id = ?', instrument_id)
  }

  scope :has_type_id, -> type_id {
    joins(team: :types).where('types.id = ?', type_id)
  }

  # TODO 誰かどうにかして。。。　あと複数キーワード対応も
  scope :search_freeword, -> word {
    w = "%#{word}%"
    joins(:team).where("(recruits.title LIKE ?) or (recruits.free_text LIKE ?) or (recruits.practice_place LIKE ?) or (recruits.practice_time LIKE ?) or (teams.name LIKE ?)", w, w, w, w, w)
  }
end
