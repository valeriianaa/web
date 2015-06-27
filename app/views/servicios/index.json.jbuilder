json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :fecha, :horaSalida, :horaLlegada
  json.url servicio_url(servicio, format: :json)
end
