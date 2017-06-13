class CreateQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaires do |t|
      t.string :access_token, null: false, index: true, unique: true
      t.string :title, null: false
      t.text :header_discription
      t.text :footer_discription
      t.string :password_digest, null: false
      t.datetime :published_from, null: false
      t.datetime :published_to, null: false
      t.timestamps
    end
  end
end
