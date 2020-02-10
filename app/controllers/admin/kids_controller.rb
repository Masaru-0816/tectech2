class Admin::KidsController < ApplicationController
  before_action :if_not_admin
  # before_action :set_kids, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    # @admin= Admin.find(params[:admin_id])
    @kid = Kid.new
    @kids = Kid.includes(:user)
  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      redirect_to admin_kids_path, notice: "児童情報を作成しました"
    else
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
    params.require(:kid).permit(:name, :sex, :group_id, :image, :user_id)
  end

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  # def set_kids
  #   @kid = Kid.find(params[:kid_id])
  # end
end
