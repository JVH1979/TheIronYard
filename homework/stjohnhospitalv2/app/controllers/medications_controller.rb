class MedicationsController < ApplicationController
  def new
    @medications = Medication.new
  end

  def show
    @medications = Medication.find params[:id]
  end

  def index
    @medications = Medication.all
  end

  def create
    @medications = Medication.create que_params[:medication]
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
