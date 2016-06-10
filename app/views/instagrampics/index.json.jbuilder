json.array!(@instagrampics) do |instagrampic|
  json.extract! instagrampic, :id, :photo_url, :description
  json.url instagrampic_url(instagrampic, format: :json)
end
