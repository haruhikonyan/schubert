class CreateQuestionnaireItemAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaire_item_answers do |t|

      t.text :free_text_answer
      t.belongs_to :questionnaire_item, null: false
      t.belongs_to :questionnaire_answer, null: false

      t.timestamps
    end
  end
end
