class ReservationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @reservations = current_user.reservations
  end

  def new
    @pets = Pet.where(user: current_user)
    @location = Location.find(params[:location_id])
    @reservation = Reservation.new
  end

  def create
    @location = Location.find(params[:location_id])
    @reservation = Reservation.new(reservation_params)
    @pet = Pet.find(params[:reservation][:pet])
    @reservation.user = current_user
    @reservation.location = @location
    @reservation.pet = @pet 
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @price = total_price(@reservation.start_date, @reservation.end_date, 5 )
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

  def total_price(start_date, end_date, price)
    a = Date.parse(end_date.strftime("%d-%m-%Y"))
    b = Date.parse(start_date.strftime("%d-%m-%Y"))
    ((a-b).to_i) * price
  end

end