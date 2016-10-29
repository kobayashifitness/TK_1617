class RenameTitleColumnToMuscleDiaries < ActiveRecord::Migration
  def change
       rename_column :muscle_diaries, :date, :datetime
  end
end
