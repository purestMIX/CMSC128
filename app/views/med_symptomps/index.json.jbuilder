json.array!(@med_symptomps) do |med_symptomp|
  json.extract! med_symptomp, :id, :medsId, :symptompsId
  json.url med_symptomp_url(med_symptomp, format: :json)
end
