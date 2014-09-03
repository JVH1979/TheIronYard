class WelcomeController < ApplicationController
  
before_action :authenticate_user!

  def index
    @locations = Location.all
    @courses = Course.all
    @projects = Project.all
  end
end
