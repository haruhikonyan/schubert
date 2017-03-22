class CreateRecruitInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :recruit_instruments do |t|
      t.belongs_to :recruit, index: true, null: false
      t.belongs_to :instrument, index: true, null: false
      t.timestamps
    end
  end
end
