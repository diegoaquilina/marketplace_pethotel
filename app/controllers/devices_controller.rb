class DevicesController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to location_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @user.update(users_params)
    redirect_to profile_show_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
