class VideosController < ApplicationController
  
  def add_image
    video = Video.find_by_name(params[:video_id])
    video.video_images.create!(:url => params[:url])
    redirect_to(video)
  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by_name(params[:id])
  end
end

