class ChordPosition < ActiveRecord::Base
  belongs_to :chord
  has_one: chord_image

  def image
    return nil unless chord_image
    chord_image.svg
  end
end
