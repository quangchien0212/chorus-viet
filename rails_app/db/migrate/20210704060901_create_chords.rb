class CreateChords < ActiveRecord::Migration[6.1]
  def change
    create_table :chords do |t|
      t.string :key, null: false
      t.string :suffix, null: false
      t.string :type, null: true, default: 'guitar'
      t.timestamps
    end
  end
end
