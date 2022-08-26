class LocationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user = current_user
    if @location.save
      redirect_to profile_show_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to location_path(@location)
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to profile_show_path(current_user)
  end


  private

  def location_params
    params.require(:location).permit(:address, :home_type, :total_occupancy, :summary, :price)
  end
end
