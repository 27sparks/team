class HomeController < ApplicationController

  def index
  	@posts = Post.all
    @riders = Rider.all
   	@title = "Home"
    respond_to do |format|
      format.html # index.html.erb}
      format.json { render json: @posts }
    end
  end

  def coming
    @title = "Coming Soon"

    respond_to do |format|
      format.html # index.html.erb}
      format.json { render json: @posts }
    end
  end

  def material
    @title = "Material"

    respond_to do |format|
      format.html # index.html.erb}
      format.json { render json: @posts }
    end
  end



end
