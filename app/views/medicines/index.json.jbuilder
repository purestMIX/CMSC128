json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :generic, :brand, :price, :Quantity, :mg
  json.url medicine_url(medicine, format: :json)
end
