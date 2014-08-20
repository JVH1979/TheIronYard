class HospitalsController < ApplicationController
  
before_action :authenticate_user!

  def index
    @hospitals = Hospital.all
  end

  def new
    @hospital = Hospital.new
  end

  def create
    @hospital = Hospital.create hospital_params
    redirect_to hospitals_path
  end

  def edit
    @hospital = Hospital.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:id]
    @hospital.update_attributes hospital_params
    redirect_to root_path
  end

  def show
    @hospital = Hospital.find params[:id]
  end

   def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to hospitals_path
  end

private
  def hospital_params
    params.require(:hospital).permit(:name)
  end
end
