# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :users
end
