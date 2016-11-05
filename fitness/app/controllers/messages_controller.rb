 class MessagesController < ApplicationController
  before_action :set_message, only: [:edit, :update, :destroy]

  # GET /messages
  # GET /messages.json

  def chat
    @recive_messages = Message.where(user_id: current_user.id)
    @sent_messages = Message.where(sent_userid: current_user.id)
    ids = []
    (@recive_messages).each do |m|
      ids.push(m.sent_userid)
    end
    (@sent_messages).each do |m|
      ids.push(m.user_id)
    end
	  @chatusers = Profile.where(user_id: ids)
  end

  def index
  end


  # def messagelist
  #   @messages = Message.where(user_id: current_user.id)
  #   #@message_user = User.where(id: @messages.sent_userid)
  # end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @sent_userid = params[:id]
    @messages = Message.where("user_id = ? or user_id = ?",current_user.id,@sent_userid).where("sent_userid = ? or sent_userid = ?",current_user.id,@sent_userid).page(params[:page]).per(8)

    @message = Message.new()
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
    @message = Message.new(message_params)
    @id = @message.user_id.to_s
    respond_to do |format|
      if @message.save
        format.html { redirect_to '/messages/'+ @id, notice: 'メッセージを送信しました' }
        format.json { render action: 'show', status: :created, location: @message }
      else
        format.html { render action: 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
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

	    params.require(:message).permit(:user_id, :sent_userid, :message)

    end

end
