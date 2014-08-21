class MedicationsController < ApplicationController
  
before_action :authenticate_user!
  
  def index
    @medications = Medication.all
  end

  def new
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.new
  end

  def show
    @medication = Medication.find params[:id]
  end

  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = @patient.medications.new(que_params)
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def edit
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.find params[:id]
  end

  def update
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.find params[:id]
    @medication.update_attributes que_params
    redirect_to medications_path
  end

  def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.find params[:id]
    @medication.delete
    redirect_to medications_path
  end

private
  def que_params
    params.require(:medication).permit(:name)
  end

end
