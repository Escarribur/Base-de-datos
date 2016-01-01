# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examns", primary_key: "id_examen", force: :cascade do |t|
    t.integer "id_muestra",                               null: false
    t.string  "nombre_examen",      limit: 100
    t.string  "descripcion_examen", limit: 400
    t.money   "precio_examen",                  scale: 2
  end

  add_index "examns", ["id_examen"], name: "examns_pk", unique: true, using: :btree
  add_index "examns", ["id_muestra"], name: "necesita_fk", using: :btree

  create_table "laboratorio_examns", primary_key: "id_laboratorio_examen", force: :cascade do |t|
    t.integer "id_laboratorio", null: false
    t.integer "id_examen"
  end

  add_index "laboratorio_examns", ["id_examen"], name: "es_realizado_fk", using: :btree
  add_index "laboratorio_examns", ["id_laboratorio"], name: "realiza_fk", using: :btree
  add_index "laboratorio_examns", ["id_laboratorio_examen"], name: "laboratorio_examns_pk", unique: true, using: :btree

  create_table "laboratorio_laboratorists", primary_key: "id_laboratorio_laborista", force: :cascade do |t|
    t.integer "id_laboratorio"
    t.decimal "rut_usuario",    null: false
    t.time    "hora_apertura"
    t.time    "hora_cierre"
  end

  add_index "laboratorio_laboratorists", ["id_laboratorio"], name: "se_trabaja_fk", using: :btree
  add_index "laboratorio_laboratorists", ["id_laboratorio_laborista"], name: "laboratorio_laboratorists_pk", unique: true, using: :btree
  add_index "laboratorio_laboratorists", ["rut_usuario"], name: "trabaja_fk", using: :btree

  create_table "laboratorios", primary_key: "id_laboratorio", force: :cascade do |t|
    t.integer "id_sede",                             null: false
    t.string  "descripcion_laboratorio", limit: 400
    t.integer "piso_laboratorio"
  end

  add_index "laboratorios", ["id_laboratorio"], name: "laboratorios_pk", unique: true, using: :btree
  add_index "laboratorios", ["id_sede"], name: "posee_1_fk", using: :btree

  create_table "laboratorists", primary_key: "rut_usuario", force: :cascade do |t|
    t.string  "identificador_laboratorista", limit: 4,   null: false
    t.string  "primer_nombre_persona",       limit: 20
    t.string  "segundo_nombre_persona",      limit: 20
    t.string  "apellido_paterno_persona",    limit: 20
    t.string  "apellido_materno_persona",    limit: 20
    t.date    "fecha_de_nacimiento"
    t.string  "prevision",                   limit: 20
    t.string  "estado_civil",                limit: 20
    t.string  "grupo_sanguineo",             limit: 4
    t.integer "edad"
    t.string  "correo",                      limit: 100
    t.string  "telefono",                    limit: 12
    t.string  "avenida_calle_domicilio",     limit: 40
    t.integer "numero_domicilio"
    t.string  "departamento_domicilio",      limit: 3
    t.string  "comuna_domicilio",            limit: 20
    t.string  "ciudad_domicilio",            limit: 20
  end

  add_index "laboratorists", ["rut_usuario"], name: "laboratorists_pk", unique: true, using: :btree

  create_table "medico_pacientes", primary_key: "id_medico_paciente", force: :cascade do |t|
    t.decimal "rut_usuario"
    t.decimal "med_rut_usuario", null: false
    t.date    "fecha_consulta"
    t.time    "hora_consulta"
  end

  add_index "medico_pacientes", ["id_medico_paciente"], name: "medico_pacientes_pk", unique: true, using: :btree
  add_index "medico_pacientes", ["med_rut_usuario"], name: "agrega_fk", using: :btree
  add_index "medico_pacientes", ["rut_usuario"], name: "es_agregado_fk", using: :btree

  create_table "medicos", primary_key: "rut_usuario", force: :cascade do |t|
    t.string  "identificador_medico",     limit: 4,   null: false
    t.string  "primer_nombre_persona",    limit: 20
    t.string  "segundo_nombre_persona",   limit: 20
    t.string  "apellido_paterno_persona", limit: 20
    t.string  "apellido_materno_persona", limit: 20
    t.date    "fecha_de_nacimiento"
    t.string  "prevision",                limit: 20
    t.string  "estado_civil",             limit: 20
    t.string  "grupo_sanguineo",          limit: 4
    t.integer "edad"
    t.string  "correo",                   limit: 100
    t.string  "telefono",                 limit: 12
    t.string  "avenida_calle_domicilio",  limit: 40
    t.integer "numero_domicilio"
    t.string  "departamento_domicilio",   limit: 3
    t.string  "comuna_domicilio",         limit: 20
    t.string  "ciudad_domicilio",         limit: 20
  end

  add_index "medicos", ["rut_usuario"], name: "medicos_pk", unique: true, using: :btree

  create_table "muestras", primary_key: "id_muestra", force: :cascade do |t|
    t.string  "descripcion_muestra", limit: 400
    t.string  "tipo_muestra",        limit: 15
    t.integer "tiempo_muestra"
  end

  add_index "muestras", ["id_muestra"], name: "muestras_pk", unique: true, using: :btree

  create_table "paciente_examns", primary_key: "id_paciente_examen", force: :cascade do |t|
    t.integer "id_examen"
    t.decimal "rut_usuario",                        null: false
    t.decimal "med_rut_usuario",                    null: false
    t.string  "estado_examen",           limit: 12
    t.boolean "realizado"
    t.date    "fecha_caducacion_examen"
    t.time    "hora_caducacion"
    t.date    "fecha_realizacion"
    t.boolean "caduco"
  end

  add_index "paciente_examns", ["id_examen"], name: "es_tomado_fk", using: :btree
  add_index "paciente_examns", ["id_paciente_examen"], name: "paciente_examns_pk", unique: true, using: :btree
  add_index "paciente_examns", ["med_rut_usuario"], name: "recomienda_fk", using: :btree
  add_index "paciente_examns", ["rut_usuario"], name: "toma_fk", using: :btree

  create_table "pacientes", primary_key: "rut_usuario", force: :cascade do |t|
    t.string  "identificador_paciente",   limit: 4,   null: false
    t.string  "primer_nombre_persona",    limit: 20
    t.string  "segundo_nombre_persona",   limit: 20
    t.string  "apellido_paterno_persona", limit: 20
    t.string  "apellido_materno_persona", limit: 20
    t.date    "fecha_de_nacimiento"
    t.string  "prevision",                limit: 20
    t.string  "estado_civil",             limit: 20
    t.string  "grupo_sanguineo",          limit: 4
    t.integer "edad"
    t.string  "correo",                   limit: 100
    t.string  "telefono",                 limit: 12
    t.string  "avenida_calle_domicilio",  limit: 40
    t.integer "numero_domicilio"
    t.string  "departamento_domicilio",   limit: 3
    t.string  "comuna_domicilio",         limit: 20
    t.string  "ciudad_domicilio",         limit: 20
  end

  add_index "pacientes", ["rut_usuario"], name: "pacientes_pk", unique: true, using: :btree

  create_table "resultado_examns", primary_key: "id_resultado_examen", force: :cascade do |t|
    t.integer "id_paciente_examen"
    t.decimal "rut_usuario",                       null: false
    t.string  "descripcion_resultado", limit: 200
  end

  add_index "resultado_examns", ["id_paciente_examen"], name: "posee_resultados_fk", using: :btree
  add_index "resultado_examns", ["id_resultado_examen"], name: "resultado_examns_pk", unique: true, using: :btree
  add_index "resultado_examns", ["rut_usuario"], name: "sube_resultados_fk", using: :btree

  create_table "sedes", primary_key: "id_sede", force: :cascade do |t|
    t.string "nombre_sede", limit: 50
  end

  add_index "sedes", ["id_sede"], name: "sedes_pk", unique: true, using: :btree

  add_foreign_key "examns", "muestras", column: "id_muestra", primary_key: "id_muestra", name: "fk_examns_necesita_muestras", on_update: :restrict, on_delete: :restrict
  add_foreign_key "laboratorio_examns", "examns", column: "id_examen", primary_key: "id_examen", name: "fk_laborato_es_realiz_examns", on_update: :restrict, on_delete: :restrict
  add_foreign_key "laboratorio_examns", "laboratorios", column: "id_laboratorio", primary_key: "id_laboratorio", name: "fk_laborato_realiza_laborato", on_update: :restrict, on_delete: :restrict
  add_foreign_key "laboratorio_laboratorists", "laboratorios", column: "id_laboratorio", primary_key: "id_laboratorio", name: "fk_laborato_se_trabaj_laborato", on_update: :restrict, on_delete: :restrict
  add_foreign_key "laboratorio_laboratorists", "laboratorists", column: "rut_usuario", primary_key: "rut_usuario", name: "fk_laborato_trabaja_laborato", on_update: :restrict, on_delete: :restrict
  add_foreign_key "laboratorios", "sedes", column: "id_sede", primary_key: "id_sede", name: "fk_laborato_posee_1_sedes", on_update: :restrict, on_delete: :restrict
  add_foreign_key "medico_pacientes", "medicos", column: "med_rut_usuario", primary_key: "rut_usuario", name: "fk_medico_p_agrega_medicos", on_update: :restrict, on_delete: :restrict
  add_foreign_key "medico_pacientes", "pacientes", column: "rut_usuario", primary_key: "rut_usuario", name: "fk_medico_p_es_agrega_paciente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "paciente_examns", "examns", column: "id_examen", primary_key: "id_examen", name: "fk_paciente_es_tomado_examns", on_update: :restrict, on_delete: :restrict
  add_foreign_key "paciente_examns", "medicos", column: "med_rut_usuario", primary_key: "rut_usuario", name: "fk_paciente_recomiend_medicos", on_update: :restrict, on_delete: :restrict
  add_foreign_key "paciente_examns", "pacientes", column: "rut_usuario", primary_key: "rut_usuario", name: "fk_paciente_toma_paciente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "resultado_examns", "laboratorists", column: "rut_usuario", primary_key: "rut_usuario", name: "fk_resultad_sube_resu_laborato", on_update: :restrict, on_delete: :restrict
  add_foreign_key "resultado_examns", "paciente_examns", column: "id_paciente_examen", primary_key: "id_paciente_examen", name: "fk_resultad_posee_res_paciente", on_update: :restrict, on_delete: :restrict
end
