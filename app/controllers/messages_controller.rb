class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create

    @message = Message.new(params[:message])
      if @message.valid?
#may need to add this(or similar) to send attachments
#       params[:post_attachments]['avatar'].each do |a|
#          @post_attachment = @post.post_attachments.create!(:avatar => a)
        unless @message.picture.nil?
#          @message.avatarpic = params[:message][:picture]
#params[:message][:picture]
#        end
          @file_name = @message.picture
          @file_data = @message.picture[0].read()
        end

        redirect_to root_url, :notice => 'Thank you for contacting us. We will get back to you soon!'
     
        NotificationsMailer.new_message(@message,@file_name,@file_data).deliver
#        NotificationsMailer.new_message(@message).deliver


      else
        respond_to do |format|
          format.html {render :action=> "new"}
          format.json {render :json=> @message.errors, :status => :unprocessable_entity}
        end
      end
  end

  #for purchasing route
  def purchasing
    @message = Message.new
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:name, :email, :company, :item, :phone, :category, :created_at, :updated_at, :preferredcontact, :companytype, :itemtype, :details, :picture, :avatar, :files,)
    end
end
