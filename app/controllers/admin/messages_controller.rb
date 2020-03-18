class Admin::MessagesController < ApplicationController
  before_action :if_not_admin

  def index
    @message = Message.new
    @messages = Message.all.order('updated_at DESC')
    @users = User.all
  end

  def create
    @message = Message.new(message_params)
    @massage.save
    redirect_to admin_messages_path, notice: "新規メッセージを送信しました"
  end
  
  private
  def message_params
    params.require(:message).permit(:content, :image, :kid_id, :user_id)
  end

  def if_not_admin
    redirect_to root_path unless current_user&.admin?
  end
end
