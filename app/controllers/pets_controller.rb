class PetsController < ApplicationController

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to profile_show_path(current_user)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to user_path(current_user)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :size_kg, :breed, :weight, :photo)
  end

end
