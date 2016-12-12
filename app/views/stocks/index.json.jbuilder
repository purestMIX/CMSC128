json.array!(@stocks) do |stock|
  json.extract! stock, :id, :medId, :quantity, :price
  json.url stock_url(stock, format: :json)
end
