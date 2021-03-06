require 'test_helper'

class JobappsControllerTest < ActionController::TestCase
  setup do
    @jobapp = jobapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobapp" do
    assert_difference('Jobapp.count') do
      post :create, jobapp: { dept: @jobapp.dept, description: @jobapp.description, num: @jobapp.num, requirement: @jobapp.requirement, title: @jobapp.title }
    end

    assert_redirected_to jobapp_path(assigns(:jobapp))
  end

  test "should show jobapp" do
    get :show, id: @jobapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobapp
    assert_response :success
  end

  test "should update jobapp" do
    patch :update, id: @jobapp, jobapp: { dept: @jobapp.dept, description: @jobapp.description, num: @jobapp.num, requirement: @jobapp.requirement, title: @jobapp.title }
    assert_redirected_to jobapp_path(assigns(:jobapp))
  end

  test "should destroy jobapp" do
    assert_difference('Jobapp.count', -1) do
      delete :destroy, id: @jobapp
    end

    assert_redirected_to jobapps_path
  end
end
