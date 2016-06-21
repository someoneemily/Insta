json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :pic_url, :followers, :following
  json.url user_url(user, format: :json)
end
