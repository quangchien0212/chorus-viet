class CreateChordKeys < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_keys do |t|
      t.string :name, null: false
    end
  end
end
