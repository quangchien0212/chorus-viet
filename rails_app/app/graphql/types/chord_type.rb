module Types
  class ChordType < BaseObject
    field :id, ID, null: false
    field :key, String, null: false
    field :suffix, String, null: false
    field :name, String, null: false
    field :chord_type, String, null: false
  end
end