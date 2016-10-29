class RenameMuscleDialiesToMuscleDiaries < ActiveRecord::Migration
  def change
    rename_table :muscle_dialies, :muscle_diaries
  end
end
