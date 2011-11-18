class PostsController < ApplicationController
  load_and_authorize_resource
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order_by([:date_published, :desc]).page(params[:page]).per(20)
    #authorize! if cannot? :read, @posts
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def list
    @posts = Post.all.order_by([:date_published, :desc]).page(params[:page]).per(8)
    @title = "News"

    respond_to do |format|
      format.html # index.html.erb
      format.atom
      format.json { render json: @posts }
    end
  end

  def feed
    @title = "Team.BERNER-Bikes.com News-Feed"
    @posts = Post.all.order_by([:date_published, :desc])
    @updated = @posts.first.published unless @posts.empty?

    respond_to do |format|
      format.atom { render :layout => false }
      # we want the RSS feed to redirect permanently to the ATOM feed
      format.rss { redirect_to feed_path(:format => :atom), :status => :moved_permanently }
    end
  end


  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.all
    #authorize! if can? :read, @post
    @title = @post.title
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = current_user.posts.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to posts_url, notice: 'Post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end
end
