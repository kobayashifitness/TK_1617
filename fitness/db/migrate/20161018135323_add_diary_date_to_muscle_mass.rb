class AddDiaryDateToMuscleMass < ActiveRecord::Migration
  def change
    add_column :muscle_masses, :diary_date, :datetime
  end
end
