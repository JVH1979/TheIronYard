class HospitalsController < ApplicationController
	

  def index
    @hospitals = Hospital.all
  end


  def new
	  @hospital = Hospital.new
	end

	def create
	  @hospital = Hospital.create que_params
    redirect_to hospitals_path
	end

  def edit
    @hospital = Hospital.find params[:id]
  end

  def show
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.new
    @patient = Patient.new
  end

  def update
    @hospital = Hospital.find params[:id]
    @hospital.update_attributes que_params
    redirect_to hospitals_path
  end

  def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to hospital_path(@hospital)
  end

   def create_doctor
    @hospital = Hospital.find params[:id]
    @hospital.doctors.create doctor_params
    redirect_to @hospital
  end

  def delete_doctor
    @hospital = Hospital.find params[:id]
    @doctor = Doctor.find params[:doctor_id]
    @doctor.delete
    redirect_to @hospital
  end

end

private
	def que_params
		params.require(:hospital).permit(:name)
	end

  def doctor_params
    params.require(:doctor).permit(:name)
  end



