class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || params[:name] == ""
      return redirect_to login_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
