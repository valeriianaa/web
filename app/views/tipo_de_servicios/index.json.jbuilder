json.array!(@tipo_de_servicios) do |tipo_de_servicio|
  json.extract! tipo_de_servicio, :id, :nombre
  json.url tipo_de_servicio_url(tipo_de_servicio, format: :json)
end
