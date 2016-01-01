json.array!(@laboratorio_laboratorists) do |laboratorio_laboratorist|
  json.extract! laboratorio_laboratorist, :id, :id_laboratorio, :rut_usuario, :hora_apertura, :hora_cierre
  json.url laboratorio_laboratorist_url(laboratorio_laboratorist, format: :json)
end
