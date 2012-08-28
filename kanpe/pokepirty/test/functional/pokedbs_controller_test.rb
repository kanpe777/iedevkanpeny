require 'test_helper'

class PokedbsControllerTest < ActionController::TestCase
  setup do
    @pokedb = pokedbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokedbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokedb" do
    assert_difference('Pokedb.count') do
      post :create, pokedb: @pokedb.attributes
    end

    assert_redirected_to pokedb_path(assigns(:pokedb))
  end

  test "should show pokedb" do
    get :show, id: @pokedb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokedb.to_param
    assert_response :success
  end

  test "should update pokedb" do
    put :update, id: @pokedb.to_param, pokedb: @pokedb.attributes
    assert_redirected_to pokedb_path(assigns(:pokedb))
  end

  test "should destroy pokedb" do
    assert_difference('Pokedb.count', -1) do
      delete :destroy, id: @pokedb.to_param
    end

    assert_redirected_to pokedbs_path
  end
end
