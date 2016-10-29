class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.string :part
      t.string :recove_time

      t.timestamps
    end
  end
end
