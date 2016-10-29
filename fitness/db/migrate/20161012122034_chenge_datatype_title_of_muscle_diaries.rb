class ChengeDatatypeTitleOfMuscleDiaries < ActiveRecord::Migration
  def change
      change_column :muscle_diaries, :datetime, :datetime
  end
end
