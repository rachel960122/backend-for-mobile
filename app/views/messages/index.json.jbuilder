json.array!(@messages) do |message|
  json.extract! message, :id, :content, :user_id, :category_id
  json.url message_url(message, format: :json)
end