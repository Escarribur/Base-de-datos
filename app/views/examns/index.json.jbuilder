json.array!(@examns) do |examn|
  json.extract! examn, :id, :id_muestra, :nombre_examen, :descripcion_examen, :precio_examen
  json.url examn_url(examn, format: :json)
end
