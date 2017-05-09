class CreateQuestionnaireChoicesOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaire_choices_options do |t|
      t.string :option_name, null: false

      t.belongs_to :questionnaire, null: false
      t.timestamps
    end
  end
end
