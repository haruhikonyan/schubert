class CreateTeamRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :team_regions do |t|
      t.belongs_to :team, index: true, null: false
      t.belongs_to :region, index: true, null: false

      t.timestamps
    end
  end
end
