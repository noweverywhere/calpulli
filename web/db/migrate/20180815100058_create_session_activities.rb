class CreateSessionActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :session_activities, id: :uuid do |t|
      t.text :duration
      t.string :module_session_id
      t.text :objective
      t.text :procedure
      t.text :progress_indicators
      t.jsonb :resources
      t.string :title

      t.timestamps
    end
  end
end
