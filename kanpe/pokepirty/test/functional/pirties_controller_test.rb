require 'test_helper'

class PirtiesControllerTest < ActionController::TestCase
  setup do
    @pirty = pirties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pirties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pirty" do
    assert_difference('Pirty.count') do
      post :create, pirty: @pirty.attributes
    end

    assert_redirected_to pirty_path(assigns(:pirty))
  end

  test "should show pirty" do
    get :show, id: @pirty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pirty.to_param
    assert_response :success
  end

  test "should update pirty" do
    put :update, id: @pirty.to_param, pirty: @pirty.attributes
    assert_redirected_to pirty_path(assigns(:pirty))
  end

  test "should destroy pirty" do
    assert_difference('Pirty.count', -1) do
      delete :destroy, id: @pirty.to_param
    end

    assert_redirected_to pirties_path
  end
end
