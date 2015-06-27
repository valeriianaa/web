require 'test_helper'

class TipoDeServiciosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_servicio = tipo_de_servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_servicio" do
    assert_difference('TipoDeServicio.count') do
      post :create, tipo_de_servicio: { nombre: @tipo_de_servicio.nombre }
    end

    assert_redirected_to tipo_de_servicio_path(assigns(:tipo_de_servicio))
  end

  test "should show tipo_de_servicio" do
    get :show, id: @tipo_de_servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_servicio
    assert_response :success
  end

  test "should update tipo_de_servicio" do
    patch :update, id: @tipo_de_servicio, tipo_de_servicio: { nombre: @tipo_de_servicio.nombre }
    assert_redirected_to tipo_de_servicio_path(assigns(:tipo_de_servicio))
  end

  test "should destroy tipo_de_servicio" do
    assert_difference('TipoDeServicio.count', -1) do
      delete :destroy, id: @tipo_de_servicio
    end

    assert_redirected_to tipo_de_servicios_path
  end
end
