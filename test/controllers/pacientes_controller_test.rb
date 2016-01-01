require 'test_helper'

class PacientesControllerTest < ActionController::TestCase
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post :create, paciente: { apellido_materno_persona: @paciente.apellido_materno_persona, apellido_paterno_persona: @paciente.apellido_paterno_persona, avenida_calle_domicilio: @paciente.avenida_calle_domicilio, ciudad_domicilio: @paciente.ciudad_domicilio, comuna_domicilio: @paciente.comuna_domicilio, correo: @paciente.correo, departamento_domicilio: @paciente.departamento_domicilio, edad: @paciente.edad, estado_civil: @paciente.estado_civil, fecha_de_nacimiento: @paciente.fecha_de_nacimiento, grupo_sanguineo: @paciente.grupo_sanguineo, identificador_paciente: @paciente.identificador_paciente, numero_domicilio: @paciente.numero_domicilio, prevision: @paciente.prevision, primer_nombre_persona: @paciente.primer_nombre_persona, segundo_nombre_persona: @paciente.segundo_nombre_persona, telefono: @paciente.telefono }
    end

    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should show paciente" do
    get :show, id: @paciente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente
    assert_response :success
  end

  test "should update paciente" do
    patch :update, id: @paciente, paciente: { apellido_materno_persona: @paciente.apellido_materno_persona, apellido_paterno_persona: @paciente.apellido_paterno_persona, avenida_calle_domicilio: @paciente.avenida_calle_domicilio, ciudad_domicilio: @paciente.ciudad_domicilio, comuna_domicilio: @paciente.comuna_domicilio, correo: @paciente.correo, departamento_domicilio: @paciente.departamento_domicilio, edad: @paciente.edad, estado_civil: @paciente.estado_civil, fecha_de_nacimiento: @paciente.fecha_de_nacimiento, grupo_sanguineo: @paciente.grupo_sanguineo, identificador_paciente: @paciente.identificador_paciente, numero_domicilio: @paciente.numero_domicilio, prevision: @paciente.prevision, primer_nombre_persona: @paciente.primer_nombre_persona, segundo_nombre_persona: @paciente.segundo_nombre_persona, telefono: @paciente.telefono }
    assert_redirected_to paciente_path(assigns(:paciente))
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete :destroy, id: @paciente
    end

    assert_redirected_to pacientes_path
  end
end
