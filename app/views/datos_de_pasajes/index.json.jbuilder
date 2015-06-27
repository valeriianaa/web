json.array!(@datos_de_pasajes) do |datos_de_pasaje|
  json.extract! datos_de_pasaje, :id
  json.url datos_de_pasaje_url(datos_de_pasaje, format: :json)
end
