class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def edit
  end
  
  def new
  end

  def create
  	if @user.save
      redirect_to users_url, :notice => "Registriert!"
    else
      render new
    end
  end

  def update

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end 
end
