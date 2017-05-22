class CreateQuestionnaireAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaire_answers do |t|

      t.belongs_to :questionnaire, null: false

      t.timestamps
    end
  end
end
