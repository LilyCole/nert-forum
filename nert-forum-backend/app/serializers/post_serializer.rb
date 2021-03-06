class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text_body, :created_at, :updated_at
  belongs_to :user
  has_many :comments
end
