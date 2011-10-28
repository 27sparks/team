class HomeController < ApplicationController

  def index
  	@posts = Post.all.order_by([:created_at, :desc])
    @riders = Rider.all
   	@title = "Home"
    if (@post == nil) 
      @post = "Danke"
    end
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



end
