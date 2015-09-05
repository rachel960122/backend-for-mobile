class UserSerializer < ActiveModel::Serializer
  embed :id
  attributes :id
  has_one :category
end
