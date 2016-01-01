json.array!(@laboratorios) do |laboratorio|
  json.extract! laboratorio, :id, :id_sede, :descripcion_laboratorio, :piso_laboratorio
  json.url laboratorio_url(laboratorio, format: :json)
end
