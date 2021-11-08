class CreateChordSuffixes < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_suffixes do |t|
      t.string :name, null: false
    end
  end
end
