class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all.reverse
  end

  def show
    # @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.found_on = Date.today
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    # @pet = Pet.find(params[:id])
  end

  def update
    # @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    # @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
