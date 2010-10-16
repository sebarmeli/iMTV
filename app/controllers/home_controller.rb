class HomeController < ApplicationController

  def index
    redirect_to(video_path(Video.last))
  end

end
