module Types
  class MutationType < Types::BaseObject
    field :create_chord, mutation: Mutations::CreateChord
  end
end
