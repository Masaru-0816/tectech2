class NoticesController < ApplicationController
  # before_action :set_group

  # def index
  #   @notice = Notice.new
  #   @notices = @kid.notices.includes(:user)
  # end

  # def create
  #   # @notice = @kid.notices.new(notice_params)
  #   # if @notice.save
  #   #   redirect_to group_messages_path(@group), notice: 'メッセージが送信されました'
  #   # else
  #   #   @messages = @group.messages.includes(:user)
  #   #   flash.now[:alert] = 'メッセージを入力してください。'
  #   #   render :index
  #   # end
  # end

  # private

  # def message_params
  #   # params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  # end

  # def set_group
  #   @group = Group.find(params[:group_id])
  # end
end
