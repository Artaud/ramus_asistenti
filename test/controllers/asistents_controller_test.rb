require 'test_helper'

class AsistentsControllerTest < ActionController::TestCase
  setup do
    @asistent = asistents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistent" do
    assert_difference('Asistent.count') do
      post :create, asistent: { email: @asistent.email, jmeno: @asistent.jmeno, ma_mlcenlivost: @asistent.ma_mlcenlivost, poznamka: @asistent.poznamka, telefon: @asistent.telefon }
    end

    assert_redirected_to asistent_path(assigns(:asistent))
  end

  test "should show asistent" do
    get :show, id: @asistent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asistent
    assert_response :success
  end

  test "should update asistent" do
    patch :update, id: @asistent, asistent: { email: @asistent.email, jmeno: @asistent.jmeno, ma_mlcenlivost: @asistent.ma_mlcenlivost, poznamka: @asistent.poznamka, telefon: @asistent.telefon }
    assert_redirected_to asistent_path(assigns(:asistent))
  end

  test "should destroy asistent" do
    assert_difference('Asistent.count', -1) do
      delete :destroy, id: @asistent
    end

    assert_redirected_to asistents_path
  end
end
