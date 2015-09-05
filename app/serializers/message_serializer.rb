class MessageSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :content, :user_id, :category_id
  has_one :category
end
