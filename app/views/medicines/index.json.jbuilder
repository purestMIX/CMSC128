json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :brandId, :genericId, :medType, :Classification
  json.url medicine_url(medicine, format: :json)
end
