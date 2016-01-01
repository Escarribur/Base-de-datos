require 'test_helper'

class LaboratorioExamnsControllerTest < ActionController::TestCase
  setup do
    @laboratorio_examn = laboratorio_examns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratorio_examns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratorio_examn" do
    assert_difference('LaboratorioExamn.count') do
      post :create, laboratorio_examn: { id_examen: @laboratorio_examn.id_examen, id_laboratorio: @laboratorio_examn.id_laboratorio }
    end

    assert_redirected_to laboratorio_examn_path(assigns(:laboratorio_examn))
  end

  test "should show laboratorio_examn" do
    get :show, id: @laboratorio_examn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboratorio_examn
    assert_response :success
  end

  test "should update laboratorio_examn" do
    patch :update, id: @laboratorio_examn, laboratorio_examn: { id_examen: @laboratorio_examn.id_examen, id_laboratorio: @laboratorio_examn.id_laboratorio }
    assert_redirected_to laboratorio_examn_path(assigns(:laboratorio_examn))
  end

  test "should destroy laboratorio_examn" do
    assert_difference('LaboratorioExamn.count', -1) do
      delete :destroy, id: @laboratorio_examn
    end

    assert_redirected_to laboratorio_examns_path
  end
end
