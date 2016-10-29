class AddDiaryDateToHeight < ActiveRecord::Migration
  def change
    add_column :heights, :diary_date, :datetime
  end
end
