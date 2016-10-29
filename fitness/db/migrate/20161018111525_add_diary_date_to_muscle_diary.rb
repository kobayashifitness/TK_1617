class AddDiaryDateToMuscleDiary < ActiveRecord::Migration
  def change
    add_column :muscle_diaries, :diary_date, :datetime
  end
end
