require 'test_helper'

class TopsQuestionsControllerTest < ActionController::TestCase
  setup do
    @tops_question = tops_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tops_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tops_question" do
    assert_difference('TopsQuestion.count') do
      post :create, tops_question: { description: @tops_question.description, qualifier_type_id: @tops_question.qualifier_type_id }
    end

    assert_redirected_to tops_question_path(assigns(:tops_question))
  end

  test "should show tops_question" do
    get :show, id: @tops_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tops_question
    assert_response :success
  end

  test "should update tops_question" do
    put :update, id: @tops_question, tops_question: { description: @tops_question.description, qualifier_type_id: @tops_question.qualifier_type_id }
    assert_redirected_to tops_question_path(assigns(:tops_question))
  end

  test "should destroy tops_question" do
    assert_difference('TopsQuestion.count', -1) do
      delete :destroy, id: @tops_question
    end

    assert_redirected_to tops_questions_path
  end
end
