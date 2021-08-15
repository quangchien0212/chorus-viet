module Mutations
  class CreateChord < BaseMutation
    argument :chord_input, Inputs::ChordInput, required: true

    field :chord, Types::ChordType, null: true
    field :errors, [String], null: true
    def resolve(chord_input:)
      chord = ::Chord.where(key: chord_input.key).first
      if chord
        return {
          chord: chord,
          errors: ['chord_already_exists']
        }
      else
        chord = ::Chord.new(chord_input.to_h)
        if chord.save
          return {
            chord: chord,
            errors: nil
          }
        else
          return {
            chord: nil,
            errors: chord.errors.full_messages
          }
        end
      end
      {
        chord: chord
      }
    end
  end
end
