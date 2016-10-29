class AddMenuToMuscleDiaries < ActiveRecord::Migration
  def change
    add_column :muscle_diaries, :menu, :string
  end
end
