class AddDiaryDateToProtein < ActiveRecord::Migration
  def change
    add_column :proteins, :diary_date, :datetime
  end
end
