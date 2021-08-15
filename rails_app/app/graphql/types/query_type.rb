module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :get_chord_by_name, Types::ChordType, null: true do
      argument :name, String, required: true
    end
    def get_chord_by_name(name:)
      ::Chord.where(name: name).first
    end

    field :get_chord_position_by_chord, [Types::ChordPositionType], null: true do
      argument :name, String, required: true
    end
    def get_chord_position_by_chord(name:)
      chord = ::Chord.where(name: name).first
      if chord
        return chord.chord_positions
      end
      return []
    end
  end
end
