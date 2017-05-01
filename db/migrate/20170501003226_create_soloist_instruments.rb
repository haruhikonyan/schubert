class CreateSoloistInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :soloist_instruments do |t|
      t.belongs_to :soloist
      t.belongs_to :instrument

      t.timestamps
    end
  end
end
