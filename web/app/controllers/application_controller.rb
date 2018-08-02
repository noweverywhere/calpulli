class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if resource.is_a?(Instructor)
      case
      when resource.sign_in_count == 1
        welcome_index_path
      when resource.courses.count == 1
        course_path(resource.courses.first)
      else
        courses_path
      end
    end
  end
end
