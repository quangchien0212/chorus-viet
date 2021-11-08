class CreateChordPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_positions do |t|
      t.references :chord, null: false
      t.string :frets
      t.string :fingers
      t.string :base_fret
      t.string :barres
      t.string :midi

      t.timestamps
    end
  end
end
