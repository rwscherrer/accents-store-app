class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:success] = 'Successfully Logged In, Welcome Back.'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully Logged Out, Goodbye for now'
    redirect_to '/login'
  end

end