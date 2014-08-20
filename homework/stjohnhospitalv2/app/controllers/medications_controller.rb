class MedicationsController < ApplicationController
  def new
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.new
  end

  def show
    @medication = Medication.find params[:id]
  end

  def index
    @medication = Medication.all
  end

  def create
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = @patient.medications.new(que_params)
    if @medication.save == true
    redirect_to hospital_patient_path(@hospital, @patient)
    else
    render :new
    end  
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
    redirect_to hospital_patient_path(@hospital, @patient)
  end

   def destroy
    @hospital = Hospital.find params[:hospital_id]
    @patient = Patient.find params[:patient_id]
    @medication = Medication.find params[:id]
    @medication.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end


private
  def que_params
    params.require(:medication).permit(:name)
  end
end
