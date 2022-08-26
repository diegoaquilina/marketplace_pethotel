class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :market

  def market
    @locations = Location.all
  end

  # def show
  #   @user = User.find(params[:id])
  #   @pets = Pet.where(user: @user)
  #   @locations = Location.where(user: @user)
  # end

  def profile
    @user = current_user
    @pets = Pet.where(user: @user)
    @locations = Location.where(user: @user)
  end


end
