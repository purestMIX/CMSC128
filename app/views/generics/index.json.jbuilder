json.array!(@generics) do |generic|
  json.extract! generic, :id, :genericName, :desc
  json.url generic_url(generic, format: :json)
end
