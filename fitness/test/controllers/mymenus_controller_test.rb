require 'test_helper'

class MymenusControllerTest < ActionController::TestCase
  setup do
    @mymenu = mymenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mymenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mymenu" do
    assert_difference('Mymenu.count') do
      post :create, mymenu: {  }
    end

    assert_redirected_to mymenu_path(assigns(:mymenu))
  end

  test "should show mymenu" do
    get :show, id: @mymenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mymenu
    assert_response :success
  end

  test "should update mymenu" do
    patch :update, id: @mymenu, mymenu: {  }
    assert_redirected_to mymenu_path(assigns(:mymenu))
  end

  test "should destroy mymenu" do
    assert_difference('Mymenu.count', -1) do
      delete :destroy, id: @mymenu
    end

    assert_redirected_to mymenus_path
  end
end
