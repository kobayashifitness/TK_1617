require 'test_helper'

class MuscleDialiesControllerTest < ActionController::TestCase
  setup do
    @muscle_dialy = muscle_dialies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscle_dialies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle_dialy" do
    assert_difference('MuscleDialy.count') do
      post :create, muscle_dialy: {  }
    end

    assert_redirected_to muscle_dialy_path(assigns(:muscle_dialy))
  end

  test "should show muscle_dialy" do
    get :show, id: @muscle_dialy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muscle_dialy
    assert_response :success
  end

  test "should update muscle_dialy" do
    patch :update, id: @muscle_dialy, muscle_dialy: {  }
    assert_redirected_to muscle_dialy_path(assigns(:muscle_dialy))
  end

  test "should destroy muscle_dialy" do
    assert_difference('MuscleDialy.count', -1) do
      delete :destroy, id: @muscle_dialy
    end

    assert_redirected_to muscle_dialies_path
  end
end
