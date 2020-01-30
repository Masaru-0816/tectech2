class DiariesController < ApplicationController
  before_action :set_kid

  def new
    @diary = Diary.includes(:kid)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
