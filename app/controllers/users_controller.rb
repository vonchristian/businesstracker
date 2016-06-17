class UsersController < ApplicationController
  def index
  end
  def new
    @user = User.new
  end
  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_url, notice: "User created successful"
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :middle_name, :last_name, :tin, :suffix)
  end
end
