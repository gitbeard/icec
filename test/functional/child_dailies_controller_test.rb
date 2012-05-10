require 'test_helper'

class ChildDailiesControllerTest < ActionController::TestCase
  setup do
    @child_daily = child_dailies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_dailies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_daily" do
    assert_difference('ChildDaily.count') do
      post :create, child_daily: { cb1: @child_daily.cb1, cb2: @child_daily.cb2, cb3: @child_daily.cb3, child_id: @child_daily.child_id, date: @child_daily.date, individual_message: @child_daily.individual_message }
    end

    assert_redirected_to child_daily_path(assigns(:child_daily))
  end

  test "should show child_daily" do
    get :show, id: @child_daily
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_daily
    assert_response :success
  end

  test "should update child_daily" do
    put :update, id: @child_daily, child_daily: { cb1: @child_daily.cb1, cb2: @child_daily.cb2, cb3: @child_daily.cb3, child_id: @child_daily.child_id, date: @child_daily.date, individual_message: @child_daily.individual_message }
    assert_redirected_to child_daily_path(assigns(:child_daily))
  end

  test "should destroy child_daily" do
    assert_difference('ChildDaily.count', -1) do
      delete :destroy, id: @child_daily
    end

    assert_redirected_to child_dailies_path
  end
end
