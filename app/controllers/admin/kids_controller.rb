class Admin::KidsController < ApplicationController
  before_action :if_not_admin

  def index
    @kid = Kid.new
    @kids = Kid.all
    @groups = Group.all
    @user = User.all
  end

  def new
    @kid = Kid.new
    @kid.users.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      redirect_to new_admin_kid_path, notice: "児童情報を作成しました"
    else
      flash.now[:alert] = "情報を入力してください"
      render :index
    end
  end

  def edit
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    if @kid.update(kid_params)
      redirect_to admin_kids_path, notice: "児童情報を更新しました"
    else
      render :edit
    end
  end
  
  private
  def kid_params
    params.require(:kid).permit(
      :name, :sex, :group_id, :image, user_ids: [])
  end

  def if_not_admin
    redirect_to root_path unless current_user&.admin?
  end
end
