json.array!(@checks) do |check|
  json.extract! check, :id, :target_id, :content
  json.url check_url(check, format: :json)
end
