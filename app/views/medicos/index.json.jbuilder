json.array!(@medicos) do |medico|
  json.extract! medico, :id, :identificador_medico, :primer_nombre_persona, :segundo_nombre_persona, :apellido_paterno_persona, :apellido_materno_persona, :fecha_de_nacimiento, :prevision, :estado_civil, :grupo_sanguineo, :edad, :correo, :telefono, :avenida_calle_domicilio, :numero_domicilio, :departamento_domicilio, :comuna_domicilio, :ciudad_domicilio
  json.url medico_url(medico, format: :json)
end
