class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.is_a?(Instructor)
      if resource.courses.count == 1
        course_path(resource.courses.first)
       else
        courses_path
      end
    end
  end
end
