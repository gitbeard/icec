require 'test_helper'

class TopsFormsControllerTest < ActionController::TestCase
  setup do
    @tops_form = tops_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tops_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tops_form" do
    assert_difference('TopsForm.count') do
      post :create, tops_form: { checked: @tops_form.checked, child_daily_id: @tops_form.child_daily_id, note: @tops_form.note, qualifier_value_id: @tops_form.qualifier_value_id, tops_question_id: @tops_form.tops_question_id }
    end

    assert_redirected_to tops_form_path(assigns(:tops_form))
  end

  test "should show tops_form" do
    get :show, id: @tops_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tops_form
    assert_response :success
  end

  test "should update tops_form" do
    put :update, id: @tops_form, tops_form: { checked: @tops_form.checked, child_daily_id: @tops_form.child_daily_id, note: @tops_form.note, qualifier_value_id: @tops_form.qualifier_value_id, tops_question_id: @tops_form.tops_question_id }
    assert_redirected_to tops_form_path(assigns(:tops_form))
  end

  test "should destroy tops_form" do
    assert_difference('TopsForm.count', -1) do
      delete :destroy, id: @tops_form
    end

    assert_redirected_to tops_forms_path
  end
end
