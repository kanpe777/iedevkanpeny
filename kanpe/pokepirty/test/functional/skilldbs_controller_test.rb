require 'test_helper'

class SkilldbsControllerTest < ActionController::TestCase
  setup do
    @skilldb = skilldbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skilldbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skilldb" do
    assert_difference('Skilldb.count') do
      post :create, skilldb: @skilldb.attributes
    end

    assert_redirected_to skilldb_path(assigns(:skilldb))
  end

  test "should show skilldb" do
    get :show, id: @skilldb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skilldb.to_param
    assert_response :success
  end

  test "should update skilldb" do
    put :update, id: @skilldb.to_param, skilldb: @skilldb.attributes
    assert_redirected_to skilldb_path(assigns(:skilldb))
  end

  test "should destroy skilldb" do
    assert_difference('Skilldb.count', -1) do
      delete :destroy, id: @skilldb.to_param
    end

    assert_redirected_to skilldbs_path
  end
end
