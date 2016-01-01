require 'test_helper'

class PacienteExamnsControllerTest < ActionController::TestCase
  setup do
    @paciente_examn = paciente_examns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paciente_examns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente_examn" do
    assert_difference('PacienteExamn.count') do
      post :create, paciente_examn: { caduco: @paciente_examn.caduco, estado_examen: @paciente_examn.estado_examen, fecha_caducacion_examen: @paciente_examn.fecha_caducacion_examen, fecha_realizacion: @paciente_examn.fecha_realizacion, hora_caducacion: @paciente_examn.hora_caducacion, id_examen: @paciente_examn.id_examen, med_rut_usuario: @paciente_examn.med_rut_usuario, realizado: @paciente_examn.realizado, rut_usuario: @paciente_examn.rut_usuario }
    end

    assert_redirected_to paciente_examn_path(assigns(:paciente_examn))
  end

  test "should show paciente_examn" do
    get :show, id: @paciente_examn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente_examn
    assert_response :success
  end

  test "should update paciente_examn" do
    patch :update, id: @paciente_examn, paciente_examn: { caduco: @paciente_examn.caduco, estado_examen: @paciente_examn.estado_examen, fecha_caducacion_examen: @paciente_examn.fecha_caducacion_examen, fecha_realizacion: @paciente_examn.fecha_realizacion, hora_caducacion: @paciente_examn.hora_caducacion, id_examen: @paciente_examn.id_examen, med_rut_usuario: @paciente_examn.med_rut_usuario, realizado: @paciente_examn.realizado, rut_usuario: @paciente_examn.rut_usuario }
    assert_redirected_to paciente_examn_path(assigns(:paciente_examn))
  end

  test "should destroy paciente_examn" do
    assert_difference('PacienteExamn.count', -1) do
      delete :destroy, id: @paciente_examn
    end

    assert_redirected_to paciente_examns_path
  end
end
