class Types::UserType < Types::BaseObject
  description "A user"

  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :street, String, null: false
  field :number, String, null: false
  field :city, String, null: false
  field :postcode, String, null: false
  field :country, String, null: false
  field :posts, [Types::PostType], null: true
  field :user_comments, [Types::CommentType], null: true
  def user_comments
    object.comments
  end

  field :full_name, String, null: false, description: "The user's full name"
  def full_name
    "#{object.first_name} #{object.last_name}"
  end

  field :address, String, null: false, description: "The user's address"
  def address
    "#{object.number} #{object.street}, #{object.city} #{object.postcode}, #{object.country}"
  end
end
