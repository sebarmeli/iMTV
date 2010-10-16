class HomeController < ApplicationController

  def index
    redirect_to(Video.last)
  end

end
