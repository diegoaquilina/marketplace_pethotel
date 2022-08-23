class ReservationsController < ApplicationController

  def destroy
    @location.destroy(params[:id])
    redirect_to list_path(@location.list), status: :see_other
  end

end
