class LocationsController < ApplicationController

before_action :authenticate_user!
  
  def new
    @location = Location.new
  end

  def create
    @location = Location.create location_params
    redirect_to root_path
  end

  def edit
    @location = Location.find params[:id]
  end

  def update
    @location = Location.find params[:id]
    @location.update_attributes location_params
    redirect_to root_path
  end

  def show
    @location = Location.find params[:id]
  end

  def destroy
     @location = Location.find params[:id]
     @location.delete
     redirect_to root_path
  end

private
  def location_params
    params.require(:location).permit(:name)
  end
end
