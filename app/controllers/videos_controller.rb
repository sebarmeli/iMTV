class VideosController < ApplicationController
  
  def add_image
    video = Video.find_by_id(params[:video_id])
    video.video_images.create!(:url => params[:url])
    render :text => "OK"
  end

  def index
    @videos = Video.all
  end
end

