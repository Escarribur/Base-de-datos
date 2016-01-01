json.array!(@muestras) do |muestra|
  json.extract! muestra, :id, :descripcion_muestra, :tipo_muestra, :tiempo_muestra
  json.url muestra_url(muestra, format: :json)
end
