class CreateLaps < ActiveRecord::Migration[5.0]
  def change
    create_table :laps do |t|
      t.integer :number
      t.integer :position
      t.time :time
      t.references :pilot, foreign_key: true
      t.references :race, foreign_key: true

      t.timestamps
    end
  end
end
