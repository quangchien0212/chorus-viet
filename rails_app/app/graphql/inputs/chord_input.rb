module Inputs
  class ChordInput < Types::BaseInputObject
    argument :key, String, required: true
    argument :suffix, String, required: true
    argument :name, String, required: true
    argument :chord_type, String, required: false
  end
end