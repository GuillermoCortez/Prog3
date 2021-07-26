class CreatePilotTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :pilot_teams do |t|
      t.references :pilot, foreign_key: true
      t.references :team, foreign_key: true
      t.references :championship, foreign_key: true

      t.timestamps
    end
  end
end
