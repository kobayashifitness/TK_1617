class RemoveWightFromMuscleDiaries < ActiveRecord::Migration
  def change
    remove_column :muscle_diaries, :wight, :float
  end
end
