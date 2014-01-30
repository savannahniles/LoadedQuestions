json.array!(@answers) do |answer|
  json.extract! answer, :content, :author, :question
  json.url answer_url(answer, format: :json)
end