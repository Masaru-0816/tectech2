class DiariesController < ApplicationController
  before_action :set_kid

  def index
    @diary = Diary.new
  end

  def new
    @diary = Diary.new
    @diaries = @kid.diaries.includes(:kid)
  end

  def create
    @diary = @kid.diaries.new(diary_params)
    if @diary.save
      redirect_to kid_diaries_path, notice: "日誌を登録しました"
    else
      @diaries = @kid.diaries.includes(:user)
      flash.now[:alert] = "情報を入力してください"
      render :index
    end
  end

  private

  def diary_params
      params.require(:diary).permit(:dinner_content, :dinner_amount, :breakfast_content, :breakfast_amount, :excreta_times, :excreta_condition, :sleep).merge(kid_id: @kid.id)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
