require 'test_helper'

class LaboratorioLaboratoristsControllerTest < ActionController::TestCase
  setup do
    @laboratorio_laboratorist = laboratorio_laboratorists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratorio_laboratorists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratorio_laboratorist" do
    assert_difference('LaboratorioLaboratorist.count') do
      post :create, laboratorio_laboratorist: { hora_apertura: @laboratorio_laboratorist.hora_apertura, hora_cierre: @laboratorio_laboratorist.hora_cierre, id_laboratorio: @laboratorio_laboratorist.id_laboratorio, rut_usuario: @laboratorio_laboratorist.rut_usuario }
    end

    assert_redirected_to laboratorio_laboratorist_path(assigns(:laboratorio_laboratorist))
  end

  test "should show laboratorio_laboratorist" do
    get :show, id: @laboratorio_laboratorist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboratorio_laboratorist
    assert_response :success
  end

  test "should update laboratorio_laboratorist" do
    patch :update, id: @laboratorio_laboratorist, laboratorio_laboratorist: { hora_apertura: @laboratorio_laboratorist.hora_apertura, hora_cierre: @laboratorio_laboratorist.hora_cierre, id_laboratorio: @laboratorio_laboratorist.id_laboratorio, rut_usuario: @laboratorio_laboratorist.rut_usuario }
    assert_redirected_to laboratorio_laboratorist_path(assigns(:laboratorio_laboratorist))
  end

  test "should destroy laboratorio_laboratorist" do
    assert_difference('LaboratorioLaboratorist.count', -1) do
      delete :destroy, id: @laboratorio_laboratorist
    end

    assert_redirected_to laboratorio_laboratorists_path
  end
end
