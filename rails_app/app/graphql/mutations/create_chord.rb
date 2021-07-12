module Mutations
  class CreateChord < BaseMutation
    argument :chord_input, Inputs::ChordInput, required: true

    field :chord, Types::ChordType, null: true
    field :errors, [String], null: true
    field :status, String, null: true
    def resolve(chord_input:)
      chord = ::Chord.where(key: chord_input.key).first
      if chord
        {
          chord: chord,
          status: 'failed',
          errors: ['chord_already_exists']
        }
      else
        chord = ::Chord.new(chord_input.to_h)
        if chord.save
          {
            chord: chord,
            status: 'success',
            errors: nil
          }
        else
          {
            chord: nil,
            status: 'failed',
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