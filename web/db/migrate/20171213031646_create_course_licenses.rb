class CreateCourseLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :course_licenses, id: :uuid do |t|
      t.uuid :school_id
      t.uuid :instructor_id
      t.uuid :course_id
    end
  end
end
