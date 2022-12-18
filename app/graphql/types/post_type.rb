class Types::PostType < Types::BaseObject
  description "A post"

  field :id, ID, null: false
  field :body, String, null: false
  field :user, Types::UserType, null: false
  field :comments, [Types::CommentType], null: true
end
