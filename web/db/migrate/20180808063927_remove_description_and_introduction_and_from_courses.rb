class RemoveDescriptionAndIntroductionAndFromCourses < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :description, :text
    remove_column :courses, :title, :text
    remove_column :courses, :introduction, :text
  end
end
