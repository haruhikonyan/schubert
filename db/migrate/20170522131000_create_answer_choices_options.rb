class CreateAnswerChoicesOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choices_options do |t|
      t.belongs_to :questionnaire_item_answer, index: true, null: false
      t.belongs_to :questionnaire_choices_option, index: true, null: false

      t.timestamps
    end
  end
end
