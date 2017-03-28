class CreateRecruits < ActiveRecord::Migration[5.0]
  def change
    create_table :recruits do |t|
      t.string :practice_place
      t.string :practice_time
      t.text :free_text
      t.datetime :published_from, null: false, default: Time.now
      t.datetime :published_to, null: false, default: Time.now

      t.belongs_to :team, null: false

      t.timestamps
    end
  end
end
