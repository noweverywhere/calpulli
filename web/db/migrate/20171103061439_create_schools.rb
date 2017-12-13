class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools, id: :uuid do |t|
      t.string :name

      t.timestamps
    end

    add_index :schools, :name, unique: true
  end
end
