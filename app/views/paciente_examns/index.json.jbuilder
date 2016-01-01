json.array!(@paciente_examns) do |paciente_examn|
  json.extract! paciente_examn, :id, :id_examen, :rut_usuario, :med_rut_usuario, :estado_examen, :realizado, :fecha_caducacion_examen, :hora_caducacion, :fecha_realizacion, :caduco
  json.url paciente_examn_url(paciente_examn, format: :json)
end
