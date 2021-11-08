class Chord < ApplicationRecord
  has_many :chord_positions

  class << self
    def find_or_create_by_key(key)
      chord = where(chord_key_id: key).first
      unless chord
        chord = new(chord_key_id: key)
      end
      chord
    end
  end
end