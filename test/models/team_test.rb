# == Schema Information
#
# Table name: teams
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  password_digest :string           not null
#  mail            :string
#  url             :string
#  free_text       :text
#  is_public       :boolean          default("false")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
