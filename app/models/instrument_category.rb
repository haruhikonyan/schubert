class InstrumentCategory < ApplicationRecord
  has_many :instruments

  def to_s
    name
  end
end
