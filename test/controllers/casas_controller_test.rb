require 'test_helper'

class CasasControllerTest < ActionController::TestCase
  setup do
    @casa = casas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casa" do
    assert_difference('Casa.count') do
      post :create, casa: { nome: @casa.nome }
    end

    assert_redirected_to casa_path(assigns(:casa))
  end

  test "should show casa" do
    get :show, id: @casa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casa
    assert_response :success
  end

  test "should update casa" do
    patch :update, id: @casa, casa: { nome: @casa.nome }
    assert_redirected_to casa_path(assigns(:casa))
  end

  test "should destroy casa" do
    assert_difference('Casa.count', -1) do
      delete :destroy, id: @casa
    end

    assert_redirected_to casas_path
  end
end
