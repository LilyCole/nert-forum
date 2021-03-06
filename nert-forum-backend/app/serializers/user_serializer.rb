class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password_digest, :name, :neighborhood, :image
  has_many :posts
  has_many :comments
end
