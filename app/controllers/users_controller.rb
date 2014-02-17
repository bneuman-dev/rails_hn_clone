class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(params[:user].permit(:email, :password, :password_confirmation))
    session[:user_id] = user.id if user
    redirect_to root_path
  end

  def edit
    if session[:user_id].to_s != params[:id].to_s
      redirect_to root_path
    else
      @user = User.find(params[:id])
    end
  end

  def update
    @user = User.find(session[:user_id])
    @user.update(params[:user].permit(:email, :password, :password_confirmation))
    render text: "Updated user"
  end

  def show
    @user = User.find(params[:id])
    @your_home_page = (params[:id].to_s == session[:user_id].to_s)
    @posts = @user.posts
  end

  def destroy
    @user = User.find(session[:user_id]).destroy
  end
end
