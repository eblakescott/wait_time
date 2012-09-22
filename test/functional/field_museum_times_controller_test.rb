require 'test_helper'

class FieldMuseumTimesControllerTest < ActionController::TestCase
  setup do
    @field_museum_time = field_museum_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_museum_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_museum_time" do
    assert_difference('FieldMuseumTime.count') do
      post :create, field_museum_time: { comments: @field_museum_time.comments, current_wait: @field_museum_time.current_wait, posted_at: @field_museum_time.posted_at, posted_by: @field_museum_time.posted_by }
    end

    assert_redirected_to field_museum_time_path(assigns(:field_museum_time))
  end

  test "should show field_museum_time" do
    get :show, id: @field_museum_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_museum_time
    assert_response :success
  end

  test "should update field_museum_time" do
    put :update, id: @field_museum_time, field_museum_time: { comments: @field_museum_time.comments, current_wait: @field_museum_time.current_wait, posted_at: @field_museum_time.posted_at, posted_by: @field_museum_time.posted_by }
    assert_redirected_to field_museum_time_path(assigns(:field_museum_time))
  end

  test "should destroy field_museum_time" do
    assert_difference('FieldMuseumTime.count', -1) do
      delete :destroy, id: @field_museum_time
    end

    assert_redirected_to field_museum_times_path
  end
end
