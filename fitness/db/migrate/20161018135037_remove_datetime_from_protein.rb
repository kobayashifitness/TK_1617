class RemoveDatetimeFromProtein < ActiveRecord::Migration
  def change
    remove_column :proteins, :datetime, :datetime
  end
end
