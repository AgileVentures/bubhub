class UsersController < ApplicationController
  def create
    @user = User.new
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.bu_id = params[:user][:bu_id]
    @user.email = params[:user][:email]
    @user.pin = params[:user][:pin]

    #the following data members need to be assigned when a bike is checked out
    @user.assigned_bike = -1
    @user.total_ride_time = 0
    @user.total_number_of_rides = 0

    if User.find_by(bu_id: @user.bu_id) == nil
      flash[:error] = "The BU ID you have entered is not valid."
      redirect_to new_user_path and return
    end

    if @user.save
      #@createdUser = User.find_by(bu_id: @user.bu_id)
      flash[:notice] = " An account for #{@user.first_name} #{@user.last_name} was successfully created"
      redirect_to root_page_path and return
    else
      flash[:error]= "Please fill in all required fields."
      redirect_to new_user_path and return
    end
  end

  def new
    render "register"
  end

  def read
  end

  def update
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :bu_id, :pin, :assigned_bike, :total_ride_time, :total_number_of_rides)
  end

  def index
    render "register"
  end
end

