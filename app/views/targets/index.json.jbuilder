json.array!(@targets) do |target|
  json.extract! target, :id, :page_url, :element_selector
  json.url target_url(target, format: :json)
end
