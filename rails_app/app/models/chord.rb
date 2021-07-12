class Chord < ActiveRecord::Base
  has_many :chord_positions

  class << self
    def find_or_create_by_key(key)
      chord = where(key: key).first
      unless chord
        chord = new(key: key)
      end
      chord
    end
  end
end