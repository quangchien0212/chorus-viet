class CreateChordPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_positions do |t|
      t.string  :frets, null: false
      t.string  :fingers, null: false
      t.integer :barres, null: true
      t.boolean :capo, null: true
      t.belongs_to :chord
      t.timestamps
    end

    create_table :chord_position_images do |t|
      t.string :mime_type, null: false
      t.string :svg, null: false
      t.belongs_to :chord_position
      t.timestamps
    end
  end
end
