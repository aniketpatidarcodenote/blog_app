class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid username/password combination"
      render :new
    end

  end


  def destroy
    @current_user = nil
    session[:user_id] = nil
  end

end
