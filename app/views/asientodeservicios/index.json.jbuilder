json.array!(@asiento_de_servicios) do |asiento_de_servicio|
  json.extract! asiento_de_servicio, :id, :nro, :estado
  json.url asiento_de_servicio_url(asiento_de_servicio, format: :json)
end
