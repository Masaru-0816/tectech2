class DiariesController < ApplicationController
  before_action :set_kid

  def new
    @diary = Diary.new
    @diaries = @kid.diaries.includes(:user)
  end

  def create
    @diary = @kid.diaries.new(diary_params)
    if @diary.save
      redirect_to new_kid_diary, notice: "日誌を登録しました"
    else
      @diaries = @kid.diaries.includes(:user)
      flash.now[:alert] = "情報を入力してください"
      render :new
    end
  end

  private

  def diary_params
      params.require(:diary).permit(:dinner_content)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
