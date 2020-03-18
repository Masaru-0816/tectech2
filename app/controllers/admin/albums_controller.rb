class Admin::AlbumsController < ApplicationController
  before_action :if_not_admin

  def index
    @album = Album.new
    @albums = Album.all.order("date DESC")
    @groups = Group.all
  end

  def new
    @album = Album.new
    @album.groups.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to admin_albums_path, notice: "新規アルバムを投稿しました"
    else
      @groups = Group.all
      flash.now[:alert] = "アルバム情報を入力してください"
      render :index
    end
  end

  private
  def album_params
    params.require(:album).permit(:title, :image, group_ids: [])
  end

  def if_not_admin
    redirect_to root_path unless current_user&.admin?
  end

end
