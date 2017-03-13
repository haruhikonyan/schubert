class CreateTeamTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :team_types do |t|
      t.belongs_to :team, index: true, null: false
      t.belongs_to :type, index: true, null: false
      t.timestamps
    end
  end
end
