# == Schema Information
#
# Table name: messages
#
#  id          :integer          not null, primary key
#  content     :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class MessageSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :content, :user_id
  has_one :category
end
