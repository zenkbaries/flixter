class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
		if @course.blank?
			render :text => "Not Found", :status => :not_found
		end
	end
end
