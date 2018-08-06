class AddOrderPositionToCourseModules < ActiveRecord::Migration[5.1]
  def change
    add_column :course_modules, :order_position, :integer
  end
end
