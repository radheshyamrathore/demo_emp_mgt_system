class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    debugger
    @user = User.new(user_params)
    @user.date_of_birth = @user.date_of_birth.to_date
    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])
  end
    
  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name, :role, :address, :mob_no, :date_of_birth, :joining_date)
  end
end
