class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to location_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation.destroy(params[:id])
    redirect_to list_path(@reservation.list), status: :see_other
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to reservation_path(@reservation)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total, :status)
  end

end


