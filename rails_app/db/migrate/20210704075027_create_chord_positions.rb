class CreateChordPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_positions do |t|
      t.string  :frets, null: false
      t.string  :fingers, null: false
      t.integer :barres, null: true
      t.boolean :capo, null: true
      t.belongs_to :chords
      t.timestamps
    end
  end
end
