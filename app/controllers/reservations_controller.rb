class ReservationsController < ApplicationController

  def destroy
    @reservation.destroy(params[:id])
    redirect_to list_path(@reservation.list), status: :see_other
  end

end
