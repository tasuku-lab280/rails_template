module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [UserType], null: false
    def users
      User.all
    end

    field :recipes, [RecipeType], null: false
    def recipes
      Recipe.all
    end
  end
end
