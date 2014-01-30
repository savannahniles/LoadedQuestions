json.array!(@questions) do |question|
  json.extract! question, :content, :author
  json.url question_url(question, format: :json)
end