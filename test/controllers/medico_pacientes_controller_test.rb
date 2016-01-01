require 'test_helper'

class MedicoPacientesControllerTest < ActionController::TestCase
  setup do
    @medico_paciente = medico_pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medico_pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medico_paciente" do
    assert_difference('MedicoPaciente.count') do
      post :create, medico_paciente: { fecha_consulta: @medico_paciente.fecha_consulta, hora_consulta: @medico_paciente.hora_consulta, med_rut_usuario: @medico_paciente.med_rut_usuario, rut_usuario: @medico_paciente.rut_usuario }
    end

    assert_redirected_to medico_paciente_path(assigns(:medico_paciente))
  end

  test "should show medico_paciente" do
    get :show, id: @medico_paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medico_paciente
    assert_response :success
  end

  test "should update medico_paciente" do
    patch :update, id: @medico_paciente, medico_paciente: { fecha_consulta: @medico_paciente.fecha_consulta, hora_consulta: @medico_paciente.hora_consulta, med_rut_usuario: @medico_paciente.med_rut_usuario, rut_usuario: @medico_paciente.rut_usuario }
    assert_redirected_to medico_paciente_path(assigns(:medico_paciente))
  end

  test "should destroy medico_paciente" do
    assert_difference('MedicoPaciente.count', -1) do
      delete :destroy, id: @medico_paciente
    end

    assert_redirected_to medico_pacientes_path
  end
end
