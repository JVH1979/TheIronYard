class PatientsController < ApplicationController
  
before_action :authenticate_user!
  def new
    @patient = Patient.new
    @hospital = Hospital.find params[:hospital_id]
  end

  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.new(patient_params)
    redirect_to root_path
  end

  def edit
    @hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:id]
    #@patient.update_attributes patient_params
    #redirect_to root_path
  end

  def show
    @patient = Patient.find params[:id]
  end

  def destroy
    @hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:id]
    @patient.delete
    #redirect_to root_path
  end


private
  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :ailment, :gender)
  end
end

