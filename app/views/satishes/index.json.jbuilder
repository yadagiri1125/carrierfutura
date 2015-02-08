json.array!(@satishes) do |satish|
  json.extract! satish, :id, :name
  json.url satish_url(satish, format: :json)
end
