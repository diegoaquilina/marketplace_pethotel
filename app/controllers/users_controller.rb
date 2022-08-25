class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @pets = Pet.where(user: @user)
    @locations = Location.where(user: @user)
  end
end
