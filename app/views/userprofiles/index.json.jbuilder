json.array!(@userprofiles) do |userprofile|
  json.extract! userprofile, :id, :name, :description, :followers, :following, :profilepic
  json.url userprofile_url(userprofile, format: :json)
end
