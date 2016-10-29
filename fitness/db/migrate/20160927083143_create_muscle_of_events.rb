class CreateMuscleOfEvents < ActiveRecord::Migration
  def change
    create_table :muscle_of_events do |t|
      t.string :event_id
      t.string :muscle_id

      t.timestamps
    end
  end
end
