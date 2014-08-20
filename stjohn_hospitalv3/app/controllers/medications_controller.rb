class MedicationsController < ApplicationController
  
before_action :authenticate_user!
  
  def index
    @medications = Medication.all
  end

  def new
    @medication = Medication.new
  end

  def create
    @medication = Medication.create que_params
    redirect_to medications_path
  end

  def edit
    @medication = Medication.find params[:id]
  end

  def update
    @medication = Medication.find params[:id]
    @medication.update_attributes que_params
    redirect_to medications_path
  end

  def destroy
    @medication = Medication.find params[:id]
    @medication.delete
    redirect_to medications_path
  end

private
  def que_params
    params.require(:medication).permit(:name)
  end

end
