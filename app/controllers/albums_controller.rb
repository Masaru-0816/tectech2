class AlbumsController < ApplicationController
  before_action :set_kid
  
  def index
    @album = Album.new
    @albums = @kid.group.albums.includes(:user)
  end

  def show
  end

  def create
    @album = @kid.albums.new(album_params)
    if @album.save
    # @notice = @kid.notices.new(notice_params)
    # if @notice.save
    #   redirect_to group_messages_path(@group), notice: 'メッセージが送信されました'
      redirect_to kid_albums_path, notice: "アルバムを作成しました"
    else
      @albums = @kid.albums.includes(:user)
      flash.now[:alert] = 'アルバムを入力してください。'
      render :index
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :date, :image).merge(user_id: current_user.id)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
