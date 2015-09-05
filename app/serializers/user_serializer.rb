class UserSerializer < ActiveModel::Serializer
  embed :id
  attributes :id
  belongs_to :category
end
