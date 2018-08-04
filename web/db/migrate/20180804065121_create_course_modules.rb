class CreateCourseModules < ActiveRecord::Migration[5.1]
  def change
    create_table :course_modules, id: :uuid do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
