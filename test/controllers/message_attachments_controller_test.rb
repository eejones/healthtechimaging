require 'test_helper'

class MessageAttachmentsControllerTest < ActionController::TestCase
  setup do
    @message_attachment = message_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:message_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message_attachment" do
    assert_difference('MessageAttachment.count') do
      post :create, message_attachment: { avatar: @message_attachment.avatar, message_id: @message_attachment.message_id }
    end

    assert_redirected_to message_attachment_path(assigns(:message_attachment))
  end

  test "should show message_attachment" do
    get :show, id: @message_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message_attachment
    assert_response :success
  end

  test "should update message_attachment" do
    patch :update, id: @message_attachment, message_attachment: { avatar: @message_attachment.avatar, message_id: @message_attachment.message_id }
    assert_redirected_to message_attachment_path(assigns(:message_attachment))
  end

  test "should destroy message_attachment" do
    assert_difference('MessageAttachment.count', -1) do
      delete :destroy, id: @message_attachment
    end

    assert_redirected_to message_attachments_path
  end
end
