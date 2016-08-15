json.array!(@updates) do |update|
  json.extract! update, :id, :text
  json.url update_url(update, format: :json)
end
