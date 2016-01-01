json.array!(@sedes) do |sede|
  json.extract! sede, :id, :nombre_sede
  json.url sede_url(sede, format: :json)
end
