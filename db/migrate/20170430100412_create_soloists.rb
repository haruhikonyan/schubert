class CreateSoloists < ActiveRecord::Migration[5.0]
  def change
    create_table :soloists do |t|
      t.string :name, null: false
      t.integer :repertoire_id
      t.timestamps
    end
  end
end
