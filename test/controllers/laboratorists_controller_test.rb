require 'test_helper'

class LaboratoristsControllerTest < ActionController::TestCase
  setup do
    @laboratorist = laboratorists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratorists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratorist" do
    assert_difference('Laboratorist.count') do
      post :create, laboratorist: { apellido_materno_persona: @laboratorist.apellido_materno_persona, apellido_paterno_persona: @laboratorist.apellido_paterno_persona, avenida_calle_domicilio: @laboratorist.avenida_calle_domicilio, ciudad_domicilio: @laboratorist.ciudad_domicilio, comuna_domicilio: @laboratorist.comuna_domicilio, correo: @laboratorist.correo, departamento_domicilio: @laboratorist.departamento_domicilio, edad: @laboratorist.edad, estado_civil: @laboratorist.estado_civil, fecha_de_nacimiento: @laboratorist.fecha_de_nacimiento, grupo_sanguineo: @laboratorist.grupo_sanguineo, identificador_laboratorista: @laboratorist.identificador_laboratorista, numero_domicilio: @laboratorist.numero_domicilio, prevision: @laboratorist.prevision, primer_nombre_persona: @laboratorist.primer_nombre_persona, segundo_nombre_persona: @laboratorist.segundo_nombre_persona, telefono: @laboratorist.telefono }
    end

    assert_redirected_to laboratorist_path(assigns(:laboratorist))
  end

  test "should show laboratorist" do
    get :show, id: @laboratorist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboratorist
    assert_response :success
  end

  test "should update laboratorist" do
    patch :update, id: @laboratorist, laboratorist: { apellido_materno_persona: @laboratorist.apellido_materno_persona, apellido_paterno_persona: @laboratorist.apellido_paterno_persona, avenida_calle_domicilio: @laboratorist.avenida_calle_domicilio, ciudad_domicilio: @laboratorist.ciudad_domicilio, comuna_domicilio: @laboratorist.comuna_domicilio, correo: @laboratorist.correo, departamento_domicilio: @laboratorist.departamento_domicilio, edad: @laboratorist.edad, estado_civil: @laboratorist.estado_civil, fecha_de_nacimiento: @laboratorist.fecha_de_nacimiento, grupo_sanguineo: @laboratorist.grupo_sanguineo, identificador_laboratorista: @laboratorist.identificador_laboratorista, numero_domicilio: @laboratorist.numero_domicilio, prevision: @laboratorist.prevision, primer_nombre_persona: @laboratorist.primer_nombre_persona, segundo_nombre_persona: @laboratorist.segundo_nombre_persona, telefono: @laboratorist.telefono }
    assert_redirected_to laboratorist_path(assigns(:laboratorist))
  end

  test "should destroy laboratorist" do
    assert_difference('Laboratorist.count', -1) do
      delete :destroy, id: @laboratorist
    end

    assert_redirected_to laboratorists_path
  end
end
