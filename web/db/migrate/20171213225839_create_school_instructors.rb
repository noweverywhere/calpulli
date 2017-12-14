class CreateSchoolInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :school_instructors, id: :uuid do |t|
      t.uuid :school_id
      t.uuid :instructor_id
    end

    remove_column :instructors, :school_id 
  end
end
