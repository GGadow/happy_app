json.array!(@quotes) do |quote|
  json.extract! quote, :id, :saying, :source
  json.url quote_url(quote, format: :json)
end
