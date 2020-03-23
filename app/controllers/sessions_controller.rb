class SessionsController < ApplicationController
  def new
  end

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)

    if user
      log_in user
      redirect_to user
      flash[:success] = "Welcome #{user.name.capitalize}!"
    else
      flash.now[:danger] = 'Name is invalid.'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
