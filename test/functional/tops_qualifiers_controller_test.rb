require 'test_helper'

class TopsQualifiersControllerTest < ActionController::TestCase
  setup do
    @tops_qualifier = tops_qualifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tops_qualifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tops_qualifier" do
    assert_difference('TopsQualifier.count') do
      post :create, tops_qualifier: { type_id: @tops_qualifier.type_id, value_id: @tops_qualifier.value_id, value_name: @tops_qualifier.value_name }
    end

    assert_redirected_to tops_qualifier_path(assigns(:tops_qualifier))
  end

  test "should show tops_qualifier" do
    get :show, id: @tops_qualifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tops_qualifier
    assert_response :success
  end

  test "should update tops_qualifier" do
    put :update, id: @tops_qualifier, tops_qualifier: { type_id: @tops_qualifier.type_id, value_id: @tops_qualifier.value_id, value_name: @tops_qualifier.value_name }
    assert_redirected_to tops_qualifier_path(assigns(:tops_qualifier))
  end

  test "should destroy tops_qualifier" do
    assert_difference('TopsQualifier.count', -1) do
      delete :destroy, id: @tops_qualifier
    end

    assert_redirected_to tops_qualifiers_path
  end
end
