json.array!(@users) do |user|
  json.extract! user, :first_name, :last_name, :picture_url
  json.url user_url(user, format: :json)
end