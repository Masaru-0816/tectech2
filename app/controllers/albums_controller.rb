class AlbumsController < ApplicationController
  before_action :set_kid
  
  def index
    @album = Album.new
    @albums = @kid.group.albums.all
  end

  def show
  end

  def set_kid
    @kid = Kid.find(params[:kid_id])
  end
end
