require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { category: @message.category, company: @message.company, companytype: @message.companytype, created_at: @message.created_at, details: @message.details, email: @message.email, item: @message.item, itemtype: @message.itemtype, name: @message.name, phone: @message.phone, preferredcontact: @message.preferredcontact, updated_at: @message.updated_at }
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { category: @message.category, company: @message.company, companytype: @message.companytype, created_at: @message.created_at, details: @message.details, email: @message.email, item: @message.item, itemtype: @message.itemtype, name: @message.name, phone: @message.phone, preferredcontact: @message.preferredcontact, updated_at: @message.updated_at }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
