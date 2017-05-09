class CreateQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaires do |t|
      t.string :title, null: false
      t.text :discription
      t.timestamps
    end
  end
end
