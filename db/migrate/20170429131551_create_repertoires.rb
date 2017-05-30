class CreateRepertoires < ActiveRecord::Migration[5.0]
  def change
    create_table :repertoires do |t|
      t.string :name, null: false
      t.string :composer, null: false
      t.belongs_to :concert_information, null: false
      t.timestamps
    end
  end
end
