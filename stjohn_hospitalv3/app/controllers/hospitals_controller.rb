class HospitalsController < ApplicationController
  
before_action :authenticate_user!
before_action :find_hospital, only: [:show, :edit, :update, :destroy]

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
    @patients = @hospital.patients
  end

   def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to hospitals_path
  end

private
  def hospital_params
    params.require(:hospital).permit(:name, :address, :longitude, :latitude)
  end

  def find_hospital
     @hospital = Hospital.find params[:id]
  end
  
  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :ailment, :gender, :hospital_id)
  end
end
