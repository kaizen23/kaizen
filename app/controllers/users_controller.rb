class UsersController < ApplicationController
before_filter :confirm_login ,:except=>[:new,:create] 
filter_resource_access
layout "user"
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
    end
  end
  
  def new
  @user = User.new
  end


  def create
  @user = User.new(params[:user])
    if @user.save
      redirect_to admin_path, :notice => "Signed up!"
      else
        render "new"
    end
  end
  


 def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url}
      format.json { head :no_content }
    end
 end
 
 def sports
 end
 
end

