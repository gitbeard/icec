require 'test_helper'

class KidsControllerTest < ActionController::TestCase
  setup do
    @kid = kids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kid" do
    assert_difference('Kid.count') do
      post :create, kid: { dad_first: @kid.dad_first, dob: @kid.dob, email_dad: @kid.email_dad, email_mom: @kid.email_mom, first_name: @kid.first_name, icec_end: @kid.icec_end, icec_start: @kid.icec_start, last_name: @kid.last_name, mom_first: @kid.mom_first }
    end

    assert_redirected_to kid_path(assigns(:kid))
  end

  test "should show kid" do
    get :show, id: @kid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kid
    assert_response :success
  end

  test "should update kid" do
    put :update, id: @kid, kid: { dad_first: @kid.dad_first, dob: @kid.dob, email_dad: @kid.email_dad, email_mom: @kid.email_mom, first_name: @kid.first_name, icec_end: @kid.icec_end, icec_start: @kid.icec_start, last_name: @kid.last_name, mom_first: @kid.mom_first }
    assert_redirected_to kid_path(assigns(:kid))
  end

  test "should destroy kid" do
    assert_difference('Kid.count', -1) do
      delete :destroy, id: @kid
    end

    assert_redirected_to kids_path
  end
end
