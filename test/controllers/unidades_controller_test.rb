require 'test_helper'

class UnidadesControllerTest < ActionController::TestCase
  setup do
    @unidad = unidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unidad" do
    assert_difference('Unidad.count') do
      post :create, unidad: { cantAsientos: @unidad.cantAsientos, nro: @unidad.nro }
    end

    assert_redirected_to unidad_path(assigns(:unidad))
  end

  test "should show unidad" do
    get :show, id: @unidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unidad
    assert_response :success
  end

  test "should update unidad" do
    patch :update, id: @unidad, unidad: { cantAsientos: @unidad.cantAsientos, nro: @unidad.nro }
    assert_redirected_to unidad_path(assigns(:unidad))
  end

  test "should destroy unidad" do
    assert_difference('Unidad.count', -1) do
      delete :destroy, id: @unidad
    end

    assert_redirected_to unidades_path
  end
end
