require 'test_helper'

class ExamnsControllerTest < ActionController::TestCase
  setup do
    @examn = examns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:examns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create examn" do
    assert_difference('Examn.count') do
      post :create, examn: { descripcion_examen: @examn.descripcion_examen, id_muestra: @examn.id_muestra, nombre_examen: @examn.nombre_examen, precio_examen: @examn.precio_examen }
    end

    assert_redirected_to examn_path(assigns(:examn))
  end

  test "should show examn" do
    get :show, id: @examn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @examn
    assert_response :success
  end

  test "should update examn" do
    patch :update, id: @examn, examn: { descripcion_examen: @examn.descripcion_examen, id_muestra: @examn.id_muestra, nombre_examen: @examn.nombre_examen, precio_examen: @examn.precio_examen }
    assert_redirected_to examn_path(assigns(:examn))
  end

  test "should destroy examn" do
    assert_difference('Examn.count', -1) do
      delete :destroy, id: @examn
    end

    assert_redirected_to examns_path
  end
end
