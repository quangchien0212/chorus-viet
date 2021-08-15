module Inputs
  class ChordPositionInput < Types::BaseInputObject
    argument :frets, String, required: true
    argument :fingers, String, required: true
    argument :barres, String, required: false
    argument :capo, String, required: false
  end
end
