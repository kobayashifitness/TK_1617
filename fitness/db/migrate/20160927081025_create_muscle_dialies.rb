class CreateMuscleDialies < ActiveRecord::Migration
  def change
    create_table :muscle_dialies do |t|
      t.integer :user_id
      t.integer :event_id
      t.float :wight
      t.integer :num
      t.integer :set_num
      t.string :date
      t.string :note

      t.timestamps
    end
  end
end
