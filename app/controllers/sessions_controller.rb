class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name] == nil || session[:name].empty?
      redirect_to '/login'
    else
      # session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name] == nil
      session[:name] = nil
    else
      session.delete :name
    end
    redirect_to '/'
  end

end
