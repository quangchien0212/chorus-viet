module Type
  class ChordPositionType < Types::BaseObject
    field :id, ID, null: false
    field :frets, String, null: false
    field :fingers, String, null: false
    field :barres, Number, null: true
    field :capo, Boolean, null: true

    field :image, Boolean, null: true
    def image
      object.image
    end
  end
end
