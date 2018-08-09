class CreateModuleSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :module_sessions, id: :uuid do |t|
      t.integer :order_position
      t.uuid :course_module_id
      t.uuid :course_id
      t.text :description

      t.timestamps
    end
  end
end
