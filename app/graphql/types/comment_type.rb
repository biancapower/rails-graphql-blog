class Types::CommentType < Types::BaseObject
  description "A comment"

  field :id, ID, null: false
  field :body, String, null: false
  field :user, Types::UserType, null: false
  field :post, Types::PostType, null: false
end
