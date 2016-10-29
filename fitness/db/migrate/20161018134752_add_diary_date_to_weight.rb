class AddDiaryDateToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :diary_date, :datetime
  end
end
