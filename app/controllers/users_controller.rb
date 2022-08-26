class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @pets = Pet.where(user: @user)
    @locations = Location.where(user: @user)
  end

  def edit; end

  def update
    raise
    @user.update(users_params)
    redirect_to user_path(@user)
  end

  private

  def users_params
    params.require(:user).permit(:name, :address, :rating) #TODO alterar parametros
  end
end
