class CreateInstrumentCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :instrument_categories do |t|
      t.string :name, index: true
      t.timestamps
    end
  end
end
