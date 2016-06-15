json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :user_id, :likes, :comments, :description
  json.url picture_url(picture, format: :json)
end
