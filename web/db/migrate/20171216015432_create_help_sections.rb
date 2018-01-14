class CreateHelpSections < ActiveRecord::Migration[5.1]
  def change
    create_table :help_sections, id: :uuid do |t|
      t.string :title
      t.string :body
      t.string :slug
      t.uuid :next
      t.uuid :previous

      t.timestamps
    end
  end
end
