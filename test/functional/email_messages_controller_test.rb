require 'test_helper'

class EmailMessagesControllerTest < ActionController::TestCase
  setup do
    @email_message = email_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_message" do
    assert_difference('EmailMessage.count') do
      post :create, email_message: { child_daily_id: @email_message.child_daily_id, child_id: @email_message.child_id, daily_note_id: @email_message.daily_note_id, date: @email_message.date, sent_time: @email_message.sent_time, to_address: @email_message.to_address }
    end

    assert_redirected_to email_message_path(assigns(:email_message))
  end

  test "should show email_message" do
    get :show, id: @email_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_message
    assert_response :success
  end

  test "should update email_message" do
    put :update, id: @email_message, email_message: { child_daily_id: @email_message.child_daily_id, child_id: @email_message.child_id, daily_note_id: @email_message.daily_note_id, date: @email_message.date, sent_time: @email_message.sent_time, to_address: @email_message.to_address }
    assert_redirected_to email_message_path(assigns(:email_message))
  end

  test "should destroy email_message" do
    assert_difference('EmailMessage.count', -1) do
      delete :destroy, id: @email_message
    end

    assert_redirected_to email_messages_path
  end
end
