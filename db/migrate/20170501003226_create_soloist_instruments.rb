class CreateSoloistInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :soloist_instruments do |t|
      t.integer :soloist_id
      t.integer :instrument_id

      t.timestamps
    end
  end
end
