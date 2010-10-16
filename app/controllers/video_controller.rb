class VideoController < ApplicationController
  
  def add_image
    video = Video.find_by_id(params[:id])
    video.video_images.create!(:url => params[:url])
    render :text => "OK"
  end
end

