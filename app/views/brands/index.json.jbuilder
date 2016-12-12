json.array!(@brands) do |brand|
  json.extract! brand, :id, :brandName, :genericId
  json.url brand_url(brand, format: :json)
end
