class PatientsController < ApplicationController
	 

	 before_action :find_patient, only: [:show, :edit, :update, :destroy, :transition]


	def show
	  @patient = Patient.find params[:id]
	end

	def new
	  @patient = Patient.new
	end

	def create
	  @patient = Patient.create que_params
	  if @patient.save == true
	  redirect_to root_path
	  else
	  	render :new
	  end
	end

	def edit
	  @patient = Patient.find params[:id]
	end

	def update
		@patient = Patient.find params[:id]
		@patient.update_attributes que_params
		redirect_to root_path
	end

	def destroy
		@patient = Patient.find params[:id]
		@patient.delete
		redirect_to root_path
	end

	def waiting
		@patient.waiting_room!
		redirect_to patient_url
	end

	def checkup_complete
		@patient.checkup!
		redirect_to patient_url
	end

	def xray_complete
		@patient.xray_now!
		redirect_to patient_url
	end

	def surgery_complete
		@patient.surgery_now!
		redirect_to patient_url
	end

	def paid
		@patient.pay!
		redirect_to patient_url
	end

private

  def find_patient
    @patient = Patient.find params[:id]
  end

  def que_params
  	params.require(:patient).permit(:firstName, :lastName, :dob, :ailment, :gender, :workflow_state)
  end
end
