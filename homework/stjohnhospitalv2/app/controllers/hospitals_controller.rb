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
  end

  def update
    @hospital = Hospital.find params[:id]
    @hospital.update_attributes que_params
    redirect_to hospitals_path
  end

  def destroy
    @hospital = Hospital.find params[:id]
    @hospital.delete
    redirect_to hospitals_path
  end
end

private
	def que_params
		params.require(:hospital).permit(:name)
	end


