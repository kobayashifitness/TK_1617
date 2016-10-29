class AddWeightToMuscleDiaries < ActiveRecord::Migration
  def change
    add_column :muscle_diaries, :weight, :float
  end
end
