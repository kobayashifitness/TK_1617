class ChengeDatatypeTitleOfHeights < ActiveRecord::Migration
  def change
      change_column :heights, :datetime, :datetime
  end
end
