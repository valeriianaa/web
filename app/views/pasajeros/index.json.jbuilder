json.array!(@pasajeros) do |pasajero|
  json.extract! pasajero, :id, :dni, :nombre
  json.url pasajero_url(pasajero, format: :json)
end
