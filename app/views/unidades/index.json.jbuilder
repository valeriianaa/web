json.array!(@unidades) do |unidad|
  json.extract! unidad, :id, :nro, :cantAsientos
  json.url unidad_url(unidad, format: :json)
end
