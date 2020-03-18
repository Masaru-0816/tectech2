class Admin::NoticesController < ApplicationController
  before_action :if_not_admin

  def index
    @notice = Notice.new
    @notices = Notice.all.order('updated_at DESC')
    @groups = Group.all
  end

  def new
    @notice = Notice.new
    @notice.groups.new
  end

  def create
    @notice = Notice.new(notice_params)
    if @notice.save
      redirect_to admin_notices_path, notice: "新規お知らせを作成しました"
    else
      @groups = Group.all
      flash.now[:alert] = "お知らせ情報を入力してください"
      render :index
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update(notice_params)
      redirect_to admin_notices_path, notice: "お知らせ情報を更新しました"
    else
      render :edit
    end
  end
  
  private
  def notice_params
    params.require(:notice).permit(
      :title, :content, :image, group_ids: [])
  end

  def if_not_admin
    redirect_to root_path unless current_user&.admin?
  end
end
