json.array!(@paradas) do |parada|
  json.extract! parada, :id, :nombre, :direccion
  json.url parada_url(parada, format: :json)
end
