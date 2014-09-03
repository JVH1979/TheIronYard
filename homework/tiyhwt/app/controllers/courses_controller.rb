class CoursesController < ApplicationController
  
 before_action :authenticate_user!

  def index
    @courses = Course.all           
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create course_params
    redirect_to root_path
  end

  def edit
    @course = Course.find params[:id]
  end

  def update
    @course = Course.find params[:id]
    @course.update_attributes course_params
    redirect_to root_path
  end

  def show
     @course = Course.find params[:id]
  end

  def destroy
     @course = Course.find params[:id]
     @course.delete
     redirect_to root_path
  end


private
  def course_params
    params.require(:course).permit(:name)
  end
end
