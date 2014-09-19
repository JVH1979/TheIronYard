class PatientsController < ApplicationController
  
before_action :authenticate_user!
before_action :find_patient, only: [:show, :edit, :update, :destroy, :hospital_id]
before_action :find_hospital
  
  def index
    @patients = Patient.all
    @hospital = Hospital.find params[:hospital_id]
    #@patients = @hospital.patients
    @patient = @hospital.patients params[:id]
    #@medications= @hopital.patient.medications[:id]
  end

  def new
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.new
    @medications = Medication.all
  end

  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = @hospital.patients.create(patient_params)
    redirect_to hospital_patients_path(@hospital)
  end

  def edit
    #@hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    @patient.update_attributes patient_params
    redirect_to hospital_path(@hospital)
  end

  def show
    @hospital = Hospital.find params[:hospital_id]
  end

  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:id]
    @patient.delete
    redirect_to hospital_patients_path
  end


private
  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :ailment, :gender, :hospital_id)
  end

  def find_patient
    @patient = Patient.find params[:id]
  end

  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end
end

