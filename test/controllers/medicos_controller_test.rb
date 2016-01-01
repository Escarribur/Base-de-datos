require 'test_helper'

class MedicosControllerTest < ActionController::TestCase
  setup do
    @medico = medicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medico" do
    assert_difference('Medico.count') do
      post :create, medico: { apellido_materno_persona: @medico.apellido_materno_persona, apellido_paterno_persona: @medico.apellido_paterno_persona, avenida_calle_domicilio: @medico.avenida_calle_domicilio, ciudad_domicilio: @medico.ciudad_domicilio, comuna_domicilio: @medico.comuna_domicilio, correo: @medico.correo, departamento_domicilio: @medico.departamento_domicilio, edad: @medico.edad, estado_civil: @medico.estado_civil, fecha_de_nacimiento: @medico.fecha_de_nacimiento, grupo_sanguineo: @medico.grupo_sanguineo, identificador_medico: @medico.identificador_medico, numero_domicilio: @medico.numero_domicilio, prevision: @medico.prevision, primer_nombre_persona: @medico.primer_nombre_persona, segundo_nombre_persona: @medico.segundo_nombre_persona, telefono: @medico.telefono }
    end

    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should show medico" do
    get :show, id: @medico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medico
    assert_response :success
  end

  test "should update medico" do
    patch :update, id: @medico, medico: { apellido_materno_persona: @medico.apellido_materno_persona, apellido_paterno_persona: @medico.apellido_paterno_persona, avenida_calle_domicilio: @medico.avenida_calle_domicilio, ciudad_domicilio: @medico.ciudad_domicilio, comuna_domicilio: @medico.comuna_domicilio, correo: @medico.correo, departamento_domicilio: @medico.departamento_domicilio, edad: @medico.edad, estado_civil: @medico.estado_civil, fecha_de_nacimiento: @medico.fecha_de_nacimiento, grupo_sanguineo: @medico.grupo_sanguineo, identificador_medico: @medico.identificador_medico, numero_domicilio: @medico.numero_domicilio, prevision: @medico.prevision, primer_nombre_persona: @medico.primer_nombre_persona, segundo_nombre_persona: @medico.segundo_nombre_persona, telefono: @medico.telefono }
    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should destroy medico" do
    assert_difference('Medico.count', -1) do
      delete :destroy, id: @medico
    end

    assert_redirected_to medicos_path
  end
end
