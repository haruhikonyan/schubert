class CreateRepertoires < ActiveRecord::Migration[5.0]
  def change
    create_table :repertoires do |t|
      t.string :name, null: false
      t.string :composer
      t.integer :concert_information_id
      t.timestamps
    end
  end
end
