class CreateConcertInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :concert_informations do |t|
      t.string :name, null: false
      t.date :day
      t.datetime :performance_opening_time
      t.datetime :place_opening_time
      t.string :place
      t.string :place_url
      t.string :conductor
      t.integer :price
      t.string :ticket_type
      t.text :introduction
      t.integer :team_id
      t.timestamps
    end
  end
end
