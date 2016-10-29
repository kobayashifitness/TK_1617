class RemoveDatetimeFromMuscleDiary < ActiveRecord::Migration
  def change
    remove_column :muscle_diaries, :datetime, :datetime
  end
end
