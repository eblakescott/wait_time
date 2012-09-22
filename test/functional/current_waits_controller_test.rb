require 'test_helper'

class CurrentWaitsControllerTest < ActionController::TestCase
  setup do
    @current_wait = current_waits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_waits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_wait" do
    assert_difference('CurrentWait.count') do
      post :create, current_wait: { location_id: @current_wait.location_id, wait_id: @current_wait.wait_id }
    end

    assert_redirected_to current_wait_path(assigns(:current_wait))
  end

  test "should show current_wait" do
    get :show, id: @current_wait
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_wait
    assert_response :success
  end

  test "should update current_wait" do
    put :update, id: @current_wait, current_wait: { location_id: @current_wait.location_id, wait_id: @current_wait.wait_id }
    assert_redirected_to current_wait_path(assigns(:current_wait))
  end

  test "should destroy current_wait" do
    assert_difference('CurrentWait.count', -1) do
      delete :destroy, id: @current_wait
    end

    assert_redirected_to current_waits_path
  end
end
