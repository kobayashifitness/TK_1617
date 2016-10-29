class RemoveDatetimeFromWeight < ActiveRecord::Migration
  def change
    remove_column :weights, :datetime, :string
  end
end
