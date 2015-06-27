require 'test_helper'

class DatosDePasajesControllerTest < ActionController::TestCase
  setup do
    @datos_de_pasaje = datos_de_pasajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_de_pasajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_de_pasaje" do
    assert_difference('DatosDePasaje.count') do
      post :create, datos_de_pasaje: {  }
    end

    assert_redirected_to datos_de_pasaje_path(assigns(:datos_de_pasaje))
  end

  test "should show datos_de_pasaje" do
    get :show, id: @datos_de_pasaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_de_pasaje
    assert_response :success
  end

  test "should update datos_de_pasaje" do
    patch :update, id: @datos_de_pasaje, datos_de_pasaje: {  }
    assert_redirected_to datos_de_pasaje_path(assigns(:datos_de_pasaje))
  end

  test "should destroy datos_de_pasaje" do
    assert_difference('DatosDePasaje.count', -1) do
      delete :destroy, id: @datos_de_pasaje
    end

    assert_redirected_to datos_de_pasajes_path
  end
end
