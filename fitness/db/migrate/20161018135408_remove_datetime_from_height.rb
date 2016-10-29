class RemoveDatetimeFromHeight < ActiveRecord::Migration
  def change
    remove_column :heights, :datetime, :datetime
  end
end
