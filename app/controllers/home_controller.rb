class HomeController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :coming]

  def index
  	@posts = Post.all
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

  def admin
  	@title = "Admin"

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
