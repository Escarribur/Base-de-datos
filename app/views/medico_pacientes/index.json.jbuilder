json.array!(@medico_pacientes) do |medico_paciente|
  json.extract! medico_paciente, :id, :rut_usuario, :med_rut_usuario, :fecha_consulta, :hora_consulta
  json.url medico_paciente_url(medico_paciente, format: :json)
end
