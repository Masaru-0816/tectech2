class AlbumsController < ApplicationController
  before_action :set_kid
  
  def index
    @album = Album.new
    @albums = @kid.group.albums.includes(:user)
    @picture = Picture.new
    @pictures = @kid.group.albums.includes(:user)
  end

  def show
  end

  def create
    # @notice = @kid.notices.new(notice_params)
    # if @notice.save
    #   redirect_to group_messages_path(@group), notice: 'メッセージが送信されました'
    # else
    #   @messages = @group.messages.includes(:user)
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render :index
    # end
  end

  private

  def notice_params
    # params.require(:notice).permit(:titile, :content, :image).merge(user_id: current_user.id)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
