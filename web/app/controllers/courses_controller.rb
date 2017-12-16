class CoursesController < ApplicationController
  before_action :set_course, only: [:show]

  def index
    if current_instructor.courses.count == 1
      redirect_to course_path(current_instructor.courses.first)
    else
      @courses = current_instructor.courses
    end
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = current_instructor.courses.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def course_params
    params.fetch(:course, {})
  end
end
