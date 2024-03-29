class HomeController < ApplicationController

  def index
  	@posts = Post.all.order_by([:date_published, :desc])
    @riders = Rider.all
   	@title = "Home"
    @galleries = Gallery.all
    
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
