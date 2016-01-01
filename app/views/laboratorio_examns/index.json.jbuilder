json.array!(@laboratorio_examns) do |laboratorio_examn|
  json.extract! laboratorio_examn, :id, :id_laboratorio, :id_examen
  json.url laboratorio_examn_url(laboratorio_examn, format: :json)
end
