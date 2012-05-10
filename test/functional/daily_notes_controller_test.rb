require 'test_helper'

class DailyNotesControllerTest < ActionController::TestCase
  setup do
    @daily_note = daily_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_note" do
    assert_difference('DailyNote.count') do
      post :create, daily_note: { date: @daily_note.date, note: @daily_note.note }
    end

    assert_redirected_to daily_note_path(assigns(:daily_note))
  end

  test "should show daily_note" do
    get :show, id: @daily_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_note
    assert_response :success
  end

  test "should update daily_note" do
    put :update, id: @daily_note, daily_note: { date: @daily_note.date, note: @daily_note.note }
    assert_redirected_to daily_note_path(assigns(:daily_note))
  end

  test "should destroy daily_note" do
    assert_difference('DailyNote.count', -1) do
      delete :destroy, id: @daily_note
    end

    assert_redirected_to daily_notes_path
  end
end
