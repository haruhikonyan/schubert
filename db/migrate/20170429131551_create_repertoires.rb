class CreateRepertoires < ActiveRecord::Migration[5.0]
  def change
    create_table :repertoires do |t|
      t.string :name, null: false
      t.string :composer
      t.belongs_to :concert_information
      t.timestamps
    end
  end
end
