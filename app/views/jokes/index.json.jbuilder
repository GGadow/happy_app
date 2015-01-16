json.array!(@jokes) do |joke|
  json.extract! joke, :id, :setup, :punchline
  json.url joke_url(joke, format: :json)
end
