class CreateChords < ActiveRecord::Migration[6.1]
  def change
    create_table :chords do |t|
      t.references :chord_key, null: false
      t.references :chord_suffix, null: false

      t.timestamps
    end
  end
end
