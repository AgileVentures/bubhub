class UserController < ApplicationController
  def create

    unless params[:terms]
      flash[:notice] = "Need to accept conditions"
    else
      flash[:notice] = 'yay'
    end
    redirect_to root_page_path

  end

  def read
  end

  def update
  end

  def delete
  end

  def register
    render "register"
  end
end

