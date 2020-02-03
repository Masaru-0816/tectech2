class KidsController < ApplicationController
  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      redirect_to kids_path, notice: '児童情報を作成しました'
    else
      render :kids_path
    end
  end

  def index
    @kid = Kid.includes(:user)
  end

  def edit
    @kid = Kid.find(params[:id])
  end

  def update
    @kid = Kid.find(params[:id])
    if @kid.update
      redirect_to kids_path, notice: '児童情報を更新しました'
    else
      render :kids_path
    end
  end

  private
  def kid_params
    params.require(:kid).permit(:name, :sex, :image, user_ids: [])
  end
  
end
