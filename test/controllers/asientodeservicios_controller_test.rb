require 'test_helper'

class AsientodeserviciosControllerTest < ActionController::TestCase
  setup do
    @asiento_de_servicio = asiento_de_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asiento_de_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asiento_de_servicio" do
    assert_difference('AsientoDeServicio.count') do
      post :create, asiento_de_servicio: { estado: @asiento_de_servicio.estado, nro: @asiento_de_servicio.nro }
    end

    assert_redirected_to asiento_de_servicio_path(assigns(:asiento_de_servicio))
  end

  test "should show asiento_de_servicio" do
    get :show, id: @asiento_de_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asiento_de_servicio
    assert_response :success
  end

  test "should update asiento_de_servicio" do
    patch :update, id: @asiento_de_servicio, asiento_de_servicio: { estado: @asiento_de_servicio.estado, nro: @asiento_de_servicio.nro }
    assert_redirected_to asiento_de_servicio_path(assigns(:asiento_de_servicio))
  end

  test "should destroy asiento_de_servicio" do
    assert_difference('AsientoDeServicio.count', -1) do
      delete :destroy, id: @asiento_de_servicio
    end

    assert_redirected_to asiento_de_servicios_path
  end
end
