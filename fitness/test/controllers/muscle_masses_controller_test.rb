require 'test_helper'

class MuscleMassesControllerTest < ActionController::TestCase
  setup do
    @muscle_mass = muscle_masses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscle_masses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle_mass" do
    assert_difference('MuscleMass.count') do
      post :create, muscle_mass: {  }
    end

    assert_redirected_to muscle_mass_path(assigns(:muscle_mass))
  end

  test "should show muscle_mass" do
    get :show, id: @muscle_mass
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muscle_mass
    assert_response :success
  end

  test "should update muscle_mass" do
    patch :update, id: @muscle_mass, muscle_mass: {  }
    assert_redirected_to muscle_mass_path(assigns(:muscle_mass))
  end

  test "should destroy muscle_mass" do
    assert_difference('MuscleMass.count', -1) do
      delete :destroy, id: @muscle_mass
    end

    assert_redirected_to muscle_masses_path
  end
end
