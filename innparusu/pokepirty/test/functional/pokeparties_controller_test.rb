require 'test_helper'

class PokepartiesControllerTest < ActionController::TestCase
  setup do
    @pokeparty = pokeparties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokeparties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokeparty" do
    assert_difference('Pokeparty.count') do
      post :create, pokeparty: @pokeparty.attributes
    end

    assert_redirected_to pokeparty_path(assigns(:pokeparty))
  end

  test "should show pokeparty" do
    get :show, id: @pokeparty.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokeparty.to_param
    assert_response :success
  end

  test "should update pokeparty" do
    put :update, id: @pokeparty.to_param, pokeparty: @pokeparty.attributes
    assert_redirected_to pokeparty_path(assigns(:pokeparty))
  end

  test "should destroy pokeparty" do
    assert_difference('Pokeparty.count', -1) do
      delete :destroy, id: @pokeparty.to_param
    end

    assert_redirected_to pokeparties_path
  end
end
