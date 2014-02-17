class SessionsController < ApplicationController

  def new

  end

  def create
    # render text: params.to_json
    email = params[:email]
    password = params[:password]
    user = User.authenticate(email, password)
    if user
      flash[:logged_in] = "You have successfully signed in"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:error] = "Error"
      redirect_to root_path
    end
  end
  def destroy
    session.clear
    redirect_to '/'
  end
end
