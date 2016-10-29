class RemoveMenuFromMuscleDiary < ActiveRecord::Migration
  def change
    remove_column :muscle_diaries, :menu, :string
  end
end
