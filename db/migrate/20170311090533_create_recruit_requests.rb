class CreateRecruitRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :recruit_requests do |t|
      t.string :practice_place
      t.string :practice_time
      t.text :free_text
      t.datetime :post_period_from
      t.datetime :post_period_to

      t.belongs_to :team, null: false

      t.timestamps
    end
  end
end
