json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :keywords
  json.url keyword_url(keyword, format: :json)
end
