module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users, [Types::UserType], null: false,
      description: "Returns a list of users"
    def users
      User.all
    end

    field :user, Types::UserType, null: false,
      description: "Returns a user" do
        argument :id, ID, required: true
      end
    def user(id:)
      User.find(id)
    end

    field :posts, [Types::PostType], null: false,
      description: "Returns a list of posts"
    def posts
      Post.all
    end

    field :post, Types::PostType, null: false,
      description: "Returns a post" do
        argument :id, ID, required: true
      end
    def post(id:)
      Post.find(id)
    end

    field :comments, [Types::CommentType], null: false,
      description: "Returns a list of comments"
    def comments
      Comment.all
    end

    field :comment, Types::CommentType, null: false,
      description: "Returns a comment" do
        argument :id, ID, required: true
      end
    def comment(id:)
      Comment.find(id)
    end

  end
end
