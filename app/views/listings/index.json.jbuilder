json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :body, :category
  json.url listing_url(listing, format: :json)
end
