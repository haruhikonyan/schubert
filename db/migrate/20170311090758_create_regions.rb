class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.string :name, index: true
      t.integer :sort_number
      t.timestamps
    end
  end
end
