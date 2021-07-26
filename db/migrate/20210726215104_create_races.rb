class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.references :circuit, foreign_key: true
      t.references :championship, foreign_key: true

      t.timestamps
    end
  end
end
