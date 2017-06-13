class CreateQuestionnaireItems < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaire_items do |t|
      t.string :title, null: false
      t.integer :sort_number, null: false
      t.boolean :is_exist_free_text, default: false, null: false
      t.boolean :is_multiple, default: true, null: false

      t.belongs_to :questionnaire, null: false

      t.timestamps
    end
  end
end
