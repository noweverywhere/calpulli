class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses, id: :uuid do |t|
      t.string :title
      t.string :description
      t.string :introduction
      t.string :year

      t.timestamps
    end
  end
end
