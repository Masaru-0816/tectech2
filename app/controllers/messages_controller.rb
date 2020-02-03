class MessagesController < ApplicationController
  before_action :set_kid

  def index
    @message = Message.new
    @messages = @kid.messages.includes(:user)
  end

  def create
    @message = @kid.messages.new(message_params)
    if @message.save
      # respond_to do |format|
      #   format.html { redirect_to kid_messages_path, notice: "メッセージを送信しました" }
      #   format.json
      redirect_to kid_messages_path, notice: "メッセージを送信しました"
    else
      @messages = @kid.messages.includes(:user)
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
