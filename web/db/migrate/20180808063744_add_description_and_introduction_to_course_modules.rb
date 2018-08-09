class AddDescriptionAndIntroductionToCourseModules < ActiveRecord::Migration[5.1]
  def change
    add_column :course_modules, :introduction, :text
  end
end
