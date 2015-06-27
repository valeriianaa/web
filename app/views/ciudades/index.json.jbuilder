json.array!(@ciudades) do |ciudad|
  json.extract! ciudad, :id, :nombre
  json.url ciudad_url(ciudad, format: :json)
end
