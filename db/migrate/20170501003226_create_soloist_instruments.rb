class CreateSoloistInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :soloist_instruments do |t|
      t.belongs_to :soloist, index: true, null: false
      t.belongs_to :instrument, index: true, null: false

      t.timestamps
    end
  end
end
