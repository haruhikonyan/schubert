class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :name, index: true
      t.string :short_name, null: false
      t.integer :sort_number
      t.timestamps

      t.belongs_to :instrument_category, null: false
    end
  end
end
