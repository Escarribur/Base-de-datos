require 'test_helper'

class MuestrasControllerTest < ActionController::TestCase
  setup do
    @muestra = muestras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muestras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muestra" do
    assert_difference('Muestra.count') do
      post :create, muestra: { descripcion_muestra: @muestra.descripcion_muestra, tiempo_muestra: @muestra.tiempo_muestra, tipo_muestra: @muestra.tipo_muestra }
    end

    assert_redirected_to muestra_path(assigns(:muestra))
  end

  test "should show muestra" do
    get :show, id: @muestra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muestra
    assert_response :success
  end

  test "should update muestra" do
    patch :update, id: @muestra, muestra: { descripcion_muestra: @muestra.descripcion_muestra, tiempo_muestra: @muestra.tiempo_muestra, tipo_muestra: @muestra.tipo_muestra }
    assert_redirected_to muestra_path(assigns(:muestra))
  end

  test "should destroy muestra" do
    assert_difference('Muestra.count', -1) do
      delete :destroy, id: @muestra
    end

    assert_redirected_to muestras_path
  end
end
