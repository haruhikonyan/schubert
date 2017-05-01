class CreateSoloists < ActiveRecord::Migration[5.0]
  def change
    create_table :soloists do |t|
      t.string :name, null: false
      t.belongs_to :repertoire
      t.timestamps
    end
  end
end
