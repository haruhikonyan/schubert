# == Schema Information
#
# Table name: instruments
#
#  id          :integer          not null, primary key
#  name        :string
#  sort_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class InstrumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
