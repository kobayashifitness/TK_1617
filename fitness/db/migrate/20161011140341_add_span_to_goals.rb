class AddSpanToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :span, :string
  end
end
