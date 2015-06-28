json.array!(@reservas) do |reserva|
  json.extract! reserva, :id, :estado
  json.url reserva_url(reserva, format: :json)
end
