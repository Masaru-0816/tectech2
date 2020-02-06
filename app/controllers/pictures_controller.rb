class PicturesController < ApplicationController
  before_action :set_kid
  
  def index
    @picture = Picture.includes(:kid)
    # @pictures = @kid.group.albums.includes(:user)
  end
 
  def create
    @picture = @kid.picture.new(picture_params)
    if @picture.save
      redirect_to kid_notices_path(@kid), notice: 'メッセージが送信されました'
    # else
    #   @messages = @group.messages.includes(:user)
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render :index
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:name, :image, :date).merge(user_id: current_user.id)
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
