json.array!(@itinerarios) do |itinerario|
  json.extract! itinerario, :id, :nombre
  json.url itinerario_url(itinerario, format: :json)
end
