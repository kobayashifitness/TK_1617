class CreateMuscleTasks < ActiveRecord::Migration
  def change
    create_table :muscle_tasks do |t|
      t.integer :event_id
      t.integer :mymenu_id
      t.float :wight
      t.integer :num
      t.integer :set_num
      t.string :day

      t.timestamps
    end
  end
end
