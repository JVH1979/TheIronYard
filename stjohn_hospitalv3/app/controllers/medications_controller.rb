class MedicationsController < ApplicationController
  
before_action :authenticate_user!
before_action :find_patient
before_action :find_hospital
before_action :find_medication, only: [:show, :edit, :update, :destroy]

  def index
    @hospital = Hospital.find params[:hospital_id]
    @patients = @hospital.patients
    @patient = @hospital.patients.find params[:patient_id]
    @medication = Medication.all
  end

  def new
    #@hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:patient_id]
    @medication = Medication.new
  end

  def show
    @hospital = Hospital.find params[:hospital_id]
  end

  def create
    #@hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:patient_id]
    @medication = @patient.medications.create(medication_params)
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def edit
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.find params[:id]
  end

  def update
    #@hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:patient_id]
    #@medication = Medication.find params[:id]
    @medication.update_attributes medication_params
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def destroy
    #@hospital = Hospital.find params[:hospital_id]
    #@patient = Patient.find params[:patient_id]
    #@medication = Medication.find params[:id]
    @medication.delete
    redirect_to medications_path
  end

private
  def medication_params
    params.require(:medication).permit(:name, :patient_id)
  end

  def find_patient
    @patient = Patient.find params[:patient_id]
  end

  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_medication
    @medication = Medication.find params[:id]
  end
end
