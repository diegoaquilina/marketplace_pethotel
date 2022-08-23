class PetsController < ApplicationController

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to location_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

end

private

def pet_params
  params.require(:pet).permit(:name, :size_kg, :breed)
end
