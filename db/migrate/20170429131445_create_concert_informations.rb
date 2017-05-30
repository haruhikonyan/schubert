class CreateConcertInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :concert_informations do |t|
      t.string :name, null: false
      t.date :day, null: false
      t.datetime :performance_opening_time, null: false
      t.datetime :place_opening_time
      t.string :place, null: false
      t.string :place_url
      t.string :conductor, null: false
      t.integer :price, null: false
      t.string :ticket_type
      t.text :introduction
      t.belongs_to :team
      t.timestamps
    end
  end
end
