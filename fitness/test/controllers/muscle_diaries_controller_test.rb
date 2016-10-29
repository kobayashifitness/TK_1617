require 'test_helper'

class MuscleDiariesControllerTest < ActionController::TestCase
  setup do
    @muscle_diary = muscle_diaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:muscle_diaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create muscle_diary" do
    assert_difference('MuscleDiary.count') do
      post :create, muscle_diary: {  }
    end

    assert_redirected_to muscle_diary_path(assigns(:muscle_diary))
  end

  test "should show muscle_diary" do
    get :show, id: @muscle_diary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @muscle_diary
    assert_response :success
  end

  test "should update muscle_diary" do
    patch :update, id: @muscle_diary, muscle_diary: {  }
    assert_redirected_to muscle_diary_path(assigns(:muscle_diary))
  end

  test "should destroy muscle_diary" do
    assert_difference('MuscleDiary.count', -1) do
      delete :destroy, id: @muscle_diary
    end

    assert_redirected_to muscle_diaries_path
  end
end
