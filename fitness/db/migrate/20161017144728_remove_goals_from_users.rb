class RemoveGoalsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :goals, :string
  end
end
