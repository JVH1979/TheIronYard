class MoviesController < ApplicationController
	def new
		@movie = Movies.new
	end

	def create
		@movie = Movies.create que_params
		redirect_to root_path
	end

private
	def que_params
		params.require(:movie).permit(:title)
	end
end
