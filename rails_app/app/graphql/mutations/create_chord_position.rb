module Mutations
  class CreateChord < BaseMutation
    argument :chord_position_input, Inputs::ChordPositionType, required: true
    argument :chord_id, String, required: true
    argument :chord_image, String, required: true
    
    field :chord_position, Types:ChordPositionType, null: true
    field :errors, [String], null: true
    def resolve(chord_position_input:)
      chord = ::Chord.where(id: chord_id).first
      unless chord
        return {
          chord_position: nil,
          errors: ['chord_not_exists']
        }
      end
      chord_position = ::ChordPosition.new(
        chord_position_input.to_h,
        id: chord_id
      )
      chord_position_image = ::ChordPositionImage.new(
        chord_position_id: chord_position.id,
        svg: chord_image,
        mime_type: 'image/svg+xml'
      )
      if chord_position.save
        return {
          chord_position: chord_position,
          errors: []
        }
      else
        return {
          chord_position: nil,
          errors: chord_position.errors.full_messages
        }
      end
    end
  end
end
