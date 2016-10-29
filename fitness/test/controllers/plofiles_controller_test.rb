require 'test_helper'

class PlofilesControllerTest < ActionController::TestCase
  setup do
    @plofile = plofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plofile" do
    assert_difference('Plofile.count') do
      post :create, plofile: {  }
    end

    assert_redirected_to plofile_path(assigns(:plofile))
  end

  test "should show plofile" do
    get :show, id: @plofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plofile
    assert_response :success
  end

  test "should update plofile" do
    patch :update, id: @plofile, plofile: {  }
    assert_redirected_to plofile_path(assigns(:plofile))
  end

  test "should destroy plofile" do
    assert_difference('Plofile.count', -1) do
      delete :destroy, id: @plofile
    end

    assert_redirected_to plofiles_path
  end
end
