json.array!(@symptomps) do |symptomp|
  json.extract! symptomp, :id, :symptompsName, :symptompsDesc
  json.url symptomp_url(symptomp, format: :json)
end
