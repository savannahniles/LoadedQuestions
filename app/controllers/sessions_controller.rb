class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(first_name: params[:session][:first_name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Yeah dude we don\'t have that first name/password combination. Try again?'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end